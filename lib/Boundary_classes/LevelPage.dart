import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LevelPage extends StatefulWidget {
  String title;
  String worldName;
  String stageName;
  LevelPage({this.title, this.worldName, this.stageName});
  @override
  _LevelPageState createState() => _LevelPageState();
}

//SELECT LEVEL PAGE
class _LevelPageState extends State<LevelPage> {
  String userId = FirebaseAuth.instance.currentUser.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(
          "Select Level",
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
            Navigator.pop(context);
          },
        ),

        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.grey[800],
        //     size: 30,
        //   ),
        //   onPressed: (){
        //     Navigator.popAndPushNamed(context, '/StagePage');
        //     }, //Need to link to previous page
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
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('worlds')
                .doc(widget.worldName)
                .collection('Stage')
                .doc(widget.stageName)
                .collection('Level')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot ds = snapshot.data.docs[index];
                      return Container(
                        height: 80,
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, '/game_engine/main');
                            }, //Need to link to the next page
                            child: Row(
                              children: <Widget>[
                                //SizedBox(height:20),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                                SizedBox(width: 90),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text(ds['score'][userId] == null
                                        ? "0"
                                        : ds['score'][userId] + "/10"),
                                  ),
                                ),
                              ],
                            ),
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

          //The buttons
        ],
      ),
    );
  }
}
