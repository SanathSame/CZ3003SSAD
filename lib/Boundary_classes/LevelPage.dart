import 'package:flutter/material.dart';

class LevelPage extends StatefulWidget {
  String Title;
  LevelPage({this.Title});
  @override
  _LevelPageState createState() =>  _LevelPageState();
}

//SELECT LEVEL PAGE
class _LevelPageState extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text("Select Level",
          style: TextStyle(
            fontFamily: 'Orbitron',
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.black,
            shadows: <Shadow>[
              Shadow(
                  offset: Offset(0,2),
                  blurRadius: 3.0,
                  color: Color.fromARGB(100, 0, 0, 0)
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/StagePage');
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
                    child: Text(widget.Title.toString(), //Hardcoded, need to change
                      style: TextStyle(
                        fontFamily: 'Orbitron',
                        fontSize: 17,
                        decorationColor: Colors.black,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1.0,
                          color: Colors.black),
                      bottom: BorderSide(
                          width: 1.0,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),//Adds space between the children of the Column

          //The buttons
          Expanded(
            child :
            ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                //Button 1
                Expanded(
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, '/game_engine/main');
                        },//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 27,
                                  fontFamily: 'Orbitron',
                                ),
                              ),
                            ),
                            SizedBox(width:90),
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
                                child: Text("7/10"),
                              ),
                            ),

                          ],
                        ),
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, '/game_engine/main');
                        },//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 2",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 27,
                                  fontFamily: 'Orbitron',
                                ),
                              ),
                            ),
                            SizedBox(width:90),
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
                                child: Text("7/10"),
                              ),
                            ),

                          ],
                        ),
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, '/game_engine/main');
                        },//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 3",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 27,
                                  fontFamily: 'Orbitron',
                                ),
                              ),
                            ),
                            SizedBox(width:90),
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
                                child: Text("7/10"),
                              ),
                            ),

                          ],
                        ),
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, '/game_engine/main');
                        },//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 4",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 27,
                                  fontFamily: 'Orbitron',
                                ),
                              ),
                            ),
                            SizedBox(width:90),
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
                                child: Text("7/10"),
                              ),
                            ),

                          ],
                        ),
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, '/game_engine/main');
                        },//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 27,
                                  fontFamily: 'Orbitron',
                                ),
                              ),
                            ),
                            SizedBox(width:90),
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
                                child: Text("7/10"),
                              ),
                            ),

                          ],
                        ),
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}


