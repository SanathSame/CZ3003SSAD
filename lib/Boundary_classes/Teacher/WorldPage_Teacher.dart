import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/Controller/WorldController.dart';

class WorldPage_Teacher extends StatefulWidget {
  @override
  _WorldPage_TeacherState createState() => _WorldPage_TeacherState();
//overide createState to create a State object.
}

class _WorldPage_TeacherState extends State<WorldPage_Teacher> {
  List<Color> circleColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];

  /// 0 means not selected
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/PvPLeaderBoardPage');
          },
        ),
        centerTitle: true,
        title: Text(
          "Select World",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / 2.5,
                bottom: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: circleColor[0],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""),
                    Text("World 1"),
                    Text(""),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (circleColor[0] == Colors.red) {
                            circleColor[0] = Colors.white;
                          } else {
                            circleColor[0] = Colors.red;
                          }
                          WorldController().updateSelect(0);
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text("Select"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.5,
                bottom: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: circleColor[1],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""),
                    Text("World 2"),
                    Text(""),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (circleColor[1] == Colors.red) {
                            circleColor[1] = Colors.white;
                          } else {
                            circleColor[1] = Colors.red;
                          }
                          WorldController().updateSelect(1);
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text("Select"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(right: MediaQuery.of(context).size.width / 2.5),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: circleColor[2],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""),
                    Text("World 3"),
                    Text(""),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (circleColor[2] == Colors.red) {
                            circleColor[2] = Colors.white;
                          } else {
                            circleColor[2] = Colors.red;
                          }
                          WorldController().updateSelect(2);
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text("Select"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.5),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: circleColor[3],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""),
                    Text("World 4"),
                    Text(""),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (circleColor[3] == Colors.red) {
                            circleColor[3] = Colors.white;
                          } else {
                            circleColor[3] = Colors.red;
                          }
                          WorldController().updateSelect(3);
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text("Select"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / 2.5,
                top: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: circleColor[4],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""),
                    Text("World 5"),
                    Text(""),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (circleColor[4] == Colors.red) {
                            circleColor[4] = Colors.white;
                          } else {
                            circleColor[4] = Colors.red;
                          }
                          WorldController().updateSelect(4);
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text("Select"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.5,
                top: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: circleColor[5],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""),
                    Text("World 6"),
                    Text(""),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (circleColor[5] == Colors.red) {
                            circleColor[5] = Colors.white;
                          } else {
                            circleColor[5] = Colors.red;
                          }
                          WorldController().updateSelect(5);
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text("Select"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
