import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: questions_4(),
));

class questions_4 extends StatefulWidget {
  @override
  _questions_4State createState() => _questions_4State();
}

class _questions_4State extends State<questions_4> {
  //boolean variable to validate drag and dropping
  bool successfulDrop = false;



  Widget req_specs = Container(
    height: 50,
    width: 320,
    child: ElevatedButton(
      onPressed: () {},
      child: Text("Requirement Specification",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: "Orbitron"
          )),
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width:1.0,
          color: Colors.black,
        ),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10)
        ),
        primary: Colors.white,
        onPrimary: Colors.black,
      ),
    ),
  );

  Widget implementation = Container(
      height: 50,
      width: 320,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Implementation",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Orbitron"
            )),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            width:1.0,
            color: Colors.black,
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10)
          ),
          primary: Colors.white,
          onPrimary: Colors.black,
        ),
      ),
  );

   Widget testing = Container(
     height: 50,
     width: 320,
     child: ElevatedButton(
       onPressed: () {},
       child: Text("Testing",
           style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontFamily: "Orbitron"
           )),
       style: ElevatedButton.styleFrom(
         side: BorderSide(
           width:1.0,
           color: Colors.black,
         ),
         shape: new RoundedRectangleBorder(
             borderRadius: new BorderRadius.circular(10)
         ),
         primary: Colors.white,
         onPrimary: Colors.black,
       ),
     ),
   );

   Widget maintenance = Container(
     height: 50,
     width: 320,
     child:  ElevatedButton(
       onPressed: () {},
       child: Text("Maintenance",
           style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontFamily: "Orbitron"
           )),
       style: ElevatedButton.styleFrom(
         side: BorderSide(
           width:1.0,
           color: Colors.black,
         ),
         shape: new RoundedRectangleBorder(
             borderRadius: new BorderRadius.circular(10)
         ),
         primary: Colors.white,
         onPrimary: Colors.black,
       ),
     ),
   );

   Widget design = Container(
     height: 50,
     width: 320,
     child: ElevatedButton(
       onPressed: () {},
       child: Text("Design",
           style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontFamily: "Orbitron"
           )),
       style: ElevatedButton.styleFrom(
         side: BorderSide(
           width:1.0,
           color: Colors.black,
         ),
         shape: new RoundedRectangleBorder(
             borderRadius: new BorderRadius.circular(10)
         ),
         primary: Colors.white,
         onPrimary: Colors.black,
       ),
     ),
   );

  Widget acceptedData;
  Widget rejectedData;

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
                      child: Text("Level 2",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Orbitron",
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
                          )),
                          Text("7/10",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Orbitron",
                          )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )
                      ),
                    ))
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20,0),
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10,10, 0),
                height: 230,
                child: Text("Question 2\n\nDrag and Arrange steps in the right order according to the Software Development Life Cycle (SDLC)",
                  style: TextStyle(
                    fontFamily: "Orbitron",
                    fontSize: 22,
                  ),),
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 20),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("1.",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text("2.",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 30, width: 5),
                      Text("3.",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 30, width: 5),
                      Text("4.",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 30, width: 5),
                      Text("5.",
                        style: TextStyle(
                          fontFamily: "Orbitron",
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 320,
                          child:  Draggable(
                            maxSimultaneousDrags: 1,
                            data: req_specs,
                            axis: Axis.vertical,
                            feedback: req_specs,
                            child: req_specs,
                            childWhenDragging: Container(),
                          ),
                        ),
                        Positioned(
                          child: DragTarget(
                            builder: (context, accepted, rejected) => Container(
                              height: 50,
                              width: 320,
                              child: acceptedData,
                            ),
                            onAccept: (Widget data){
                              acceptedData= data;
                            },
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 15),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 320,
                          child:  Draggable(
                            maxSimultaneousDrags: 1,
                            data: implementation,
                            axis: Axis.vertical,
                            feedback: implementation,
                            child: implementation,
                            childWhenDragging: Container(),
                          ),
                        ),
                        Positioned(
                          child: DragTarget(
                            builder: (context, accepted, rejected) => Container(
                              height: 50,
                              width: 320,
                              child: acceptedData,
                            ),
                            onAccept: (Widget data){
                              acceptedData= data;
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 15),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 320,
                          child:  Draggable(
                            maxSimultaneousDrags: 1,
                            data: testing,
                            axis: Axis.vertical,
                            feedback: testing,
                            child: testing,
                            childWhenDragging: Container(),
                          ),
                        ),
                        Positioned(
                          child: DragTarget(
                            builder: (context, accepted, rejected) => Container(
                              height: 50,
                              width: 320,
                                child: acceptedData,
                            ),
                            onAccept: (Widget data){
                              acceptedData= data;
                            },

                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 15),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 320,
                          child:  Draggable(
                            maxSimultaneousDrags: 1,
                            data: maintenance,
                            axis: Axis.vertical,
                            feedback: maintenance,
                            child: maintenance,
                            childWhenDragging: Container(),
                          ),
                        ),
                        Positioned(
                          child: DragTarget(
                            builder: (context, accepted, rejected) => Container(
                              height: 50,
                              width: 320,
                                child: acceptedData,
                            ),
                            onAccept: (Widget data){
                              acceptedData= data;
                            },

                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 15),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 320,
                          child:  Draggable(
                            maxSimultaneousDrags: 1,
                            data: design,
                            axis: Axis.vertical,
                            feedback: design,
                            child: design,
                            childWhenDragging: Container(),
                          ),
                        ),
                        Positioned(
                          child: DragTarget(
                            builder: (context, accepted, rejected) => Container(
                              height: 50,
                              width: 320,
                                child: acceptedData,
                            ),
                            onAccept: (Widget data){
                              acceptedData= data;
                            },

                          ),
                        ),

                      ],
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

// class _DragTargetWidget extends StatefulWidget {
//   @override
//   __DragTargetWidgetState createState() => __DragTargetWidgetState();
// }
//
// class __DragTargetWidgetState extends State<_DragTargetWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return DragTarget<Widget>(
//       builder: (context, incoming, rejected) {
//         return Container();
//       },
//     );
//   }
// }
