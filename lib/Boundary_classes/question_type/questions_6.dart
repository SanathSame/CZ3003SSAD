import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: questions_6(),
));

class questions_6 extends StatefulWidget {
  @override
  _questions_6State createState() => _questions_6State();
}

class _questions_6State extends State<questions_6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
        bottom: true,
        right: true,
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
                    height: 70,
                    width: 200,
                    alignment: Alignment.center,
                    child: Expanded(
                      child: Container(
                        height:50,
                        width: 200,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 20, 10),
                          child:Text("World Quiz",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "Orbitron",
                              )),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            )
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20,30,20,10),
                  height: 200,

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
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  height: 80,
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  height: 80,
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  height: 80,
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  height: 80,
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
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Leave",
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

          ],
        ),
      ),
    );
  }
}
