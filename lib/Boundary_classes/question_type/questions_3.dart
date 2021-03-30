import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: mcq3(),
));

class mcq3 extends StatefulWidget {
  @override
  _mcq3State createState() => _mcq3State();
}

class _mcq3State extends State<mcq3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
        right: true,
        bottom: true,
        top: true,
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
                    height:70,
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
                      )
                    ),
                  )
                ),
                Expanded(
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Score",
                          style: TextStyle(
                            fontFamily: "Orbitron",
                            fontSize: 20,
                          )),
                          Text("0/10",
                          style: TextStyle(
                            fontSize: 20,
                          ))
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )
                      )
                    ) )
              ],
            ),
            SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20,20,20,10),
                  height: 250,
                  child: Expanded(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Text("Question 1:\n\nSRS should be written in natural language, in an unambiguous manner that may also include diagrams as necessary.",
                          style: TextStyle(
                            fontFamily: "Orbitron",
                            fontSize: 20,
                          ),),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    )
                  ),
                ),
                SizedBox(height:50),
                Container(
                    height: 60,
                    width: 345,
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("True",
                            style: TextStyle(
                              fontFamily: "Orbitron",
                              fontSize: 20,
                            )),
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
                    )
                ),
                SizedBox(height:30),
                Container(
                    height: 60,
                    width: 345,
                    child: Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text("False",
                              style: TextStyle(
                                fontFamily: "Orbitron",
                                fontSize: 20,
                              )),
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
                    )
                ),
                SizedBox(height:50),
                Container(
                    width: 90,
                    child: Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Next",
                              style: TextStyle(
                                fontFamily: "Orbitron",
                                fontSize: 20,
                              )),
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
                    )
                ),

              ],
            )
          ],
        )

      ),
    );
  }
}
