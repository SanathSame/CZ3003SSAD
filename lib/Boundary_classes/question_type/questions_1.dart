import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: mcq1(),
));

class mcq1 extends StatefulWidget {
  @override
  _mcq1State createState() => _mcq1State();
}

class _mcq1State extends State<mcq1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
        right: true,
        top: true,
        bottom: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 70,
                        width: 200,
                        alignment: Alignment.center,
                        child: Text("Level 2",
                          style: TextStyle(
                            fontFamily: "Orbitron",
                            fontSize: 20.0,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        //width: 192,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Score",
                              style: TextStyle(
                                fontFamily: "Orbitron",
                                fontSize: 20,
                              ),),
                            Text("0/10",
                              style: TextStyle(
                                fontSize: 20,
                              ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            )
                        ),
                      ),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.fromLTRB(20,30,20,10),
                         height: 200,
                        // width: 90,

                        child: Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Question 1:"
                                  "\n"
                                  "\nWhich is not a benefit of using Dialog Map?",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "Orbitron",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 1.0,
                                color: Colors.black,
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              primary: Colors.grey[400],
                              onPrimary: Colors.black,
                            )
                              ),
                        ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 100,
                      width: 470,

                      child: Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Helps spot opportunites for reuse",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Orbitron",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 1.0,
                                color: Colors.black,
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              primary: Colors.white,
                              onPrimary: Colors.black,
                            )
                        ),
                      ),


                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 100,
                      width: 470,

                      child: Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Helps find missing pathways",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Orbitron",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 1.0,
                                color: Colors.black,
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              primary: Colors.white,
                              onPrimary: Colors.black,
                            )
                        ),
                      ),


                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 100,
                       width: 470,

                      child: Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Helps identify the interaction within the system",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Orbitron",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 1.0,
                                color: Colors.black,
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              primary: Colors.white,
                              onPrimary: Colors.black,
                            )
                        ),
                      ),


                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 100,
                       width: 470,

                      child: Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Helps find incorrect navigation paths",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Orbitron",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 1.0,
                                color: Colors.black,
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              primary: Colors.white,
                              onPrimary: Colors.black,
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Next",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            primary: Colors.grey[200],
                            onPrimary: Colors.black,
                          )
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
