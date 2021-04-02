import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'LevelPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class StagePage extends StatefulWidget {
  final String title;
  final String worldName;
  StagePage({this.title, this.worldName});
  @override
  _StagePageState createState() => _StagePageState();
}

//SELECT STAGE PAGE
class _StagePageState extends State<StagePage> {
  String userId = FirebaseAuth.instance.currentUser.uid;
  int total = 0;
  void _collateScores(ds) async {
    int total = 0;
    print("COLLATING...");
    await FirebaseFirestore.instance
        .collection('worlds')
        .doc(widget.worldName)
        .collection('Stage')
        .doc(ds.id)
        .collection('Level')
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((level) {
        total += int.parse(level.data()['score'][userId]);
      });
      setState(() {
        total = total;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(
          "Select Stage",
          style: TextStyle(
            fontFamily: 'Orbitron',
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.black,
            shadows: <Shadow>[
              Shadow(
                  offset: Offset(0, 2),
                  blurRadius: 3.0,
                  color: Color.fromARGB(100, 0, 0, 0))
            ],
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/WorldPage');
          },
        ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.grey[800],
        //     size: 30,
        //   ),
        //   onPressed: (){
        //     Navigator.popAndPushNamed(context, '/WorldPage');
        //   }, //Need to link to previous page
        // ),
      ),

      //The Topic Name/Heading
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    heightFactor: 2.0,
                    child: Text(
                      widget.title.toString(), //Hardcoded, need to change
                      style: TextStyle(
                        fontFamily: 'Orbitron',
                        fontSize: 17,
                        decorationColor: Colors.black,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black),
                      bottom: BorderSide(width: 1.0, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), //Adds space between the children of the Column

          //The buttons
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('worlds')
                  .doc(widget.worldName)
                  .collection('Stage')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return new ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot ds = snapshot.data.docs[index];

                        //COLLATE SCORES
                        // _collateScores(ds);

                        return Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LevelPage(
                                          title: ds['name'],
                                          stageName: ds.id,
                                          worldName: widget.worldName)),
                                );
                              }, //Need to link to the next page
                              child: Stack(children: [
                                Column(
                                  //alignment: Alignment.topRight,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Container(
                                                height: 30,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Center(
                                                  child: Text(ds['score']
                                                          [userId] +
                                                      "/50"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: Text(
                                            ds.id,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 27,
                                              fontFamily: 'Orbitron',
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                            child: Text(
                                          ds['name'],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Orbitron',
                                          ),
                                        )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ]),

                              color: Colors.white,
                              shape: new RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        );
                      });
                } else {
                  print("nothing to return ");
                  return new SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
