import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drag_and_drop_page.dart';

void main() => runApp(MaterialApp(
      home: questions_4(),
    ));

class questions_4 extends StatefulWidget {
  @override
  _questions_4State createState() => _questions_4State();
}

class _questions_4State extends State<questions_4> {
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
                        height: 70,
                        width: 200,
                        alignment: Alignment.center,
                        child: Text(
                          "Level 2",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black,
                        ))),
                  ),
                  Expanded(
                      child: Container(
                    height: 70,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Score",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text("4/10",
                            style: TextStyle(
                              fontSize: 20.0,
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                    )),
                  ))
                ],
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    height: 240,
                    child: Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            "Question 3:\n\nArrange the steps in the correct order of the Software Development Life Cycle (SDLC). Press and Hold for 3 seconds to Drag and Drop.",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          border: Border.all(
                            color: Colors.black,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(height:10),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Container(
                      height: 300,
                      child: reorderable_list(),
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                      width: 90,
                      child: Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Next",
                                style: TextStyle(
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
                            )),
                      )),
                ],
              ),
            ],
          )),
    );
  }
}
