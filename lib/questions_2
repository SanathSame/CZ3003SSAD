import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: mcq2(),
));

class mcq2 extends StatefulWidget {
  @override
  _mcq2State createState() => _mcq2State();
}

class _mcq2State extends State<mcq2> {
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
                    child: Text("Level 3",
                    style: TextStyle(
                      fontFamily: "Orbitron",
                      fontSize: 20.0,
                    )),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )
                    ),
                  ),
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
                        ),),
                        Text("0/15",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 20,
                        ))
                      ]
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )
                    ),
                  ),
                ),
              ]
            ),
            SizedBox(height:30),
            Container(
                padding: EdgeInsets.fromLTRB(20,20,20,20),
                height: 400.0,
                width: 350.0,
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Question 2",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        )),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: Image(
                        image: AssetImage('assets/arrow_image.jpg'),
                      ),
                    ),
                    SizedBox(height:20),
                    Text("What does the arrow shown above represent in the UML Activity Diagram",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 20,
                        )),
                  ],
                ),
              ),

            SizedBox(height:30),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )
                  ),
                  child:TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your answer here'
                    ),
                  ),
              ),
            ),
            SizedBox(height:60),
            Container(
              width:90,
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
        )
      ),
    );
  }
}
