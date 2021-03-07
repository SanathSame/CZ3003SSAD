import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: SelectStage(),
));


//SELECT STAGE PAGE
class SelectStage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text("Select Stage",
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
            size: 30,
          ),
          onPressed: (){
          }, //Need to link to previous page
        ),
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
                    child: Text("Requirement Specification", //Hardcoded, need to change
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
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SelectLevel()),
                              );
                            },//Need to link to the next page
                            child: Stack(
                              //alignment: Alignment.topRight,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    SizedBox(height:20),
                                    Container(
                                      child: Text("Stage 1",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 27,
                                          fontFamily: 'Orbitron',),
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Container(
                                        child: Text("Requirements Elicitation",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Orbitron',
                                          ),)
                                    ),
                                    SizedBox(height:20),
                                  ],
                                ),
                                Positioned(
                                  child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text("35/50"),
                                  ),
                                ),
                                  top: 20,
                                  right: 0,
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

                      //Button 2
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SelectLevel()),
                          );
                        },//Need to link to the next page
                        child: Stack(
                          //alignment: Alignment.topRight,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height:20),
                                Container(
                                  child: Text("Stage 2",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27,
                                      fontFamily: 'Orbitron',),
                                  ),
                                ),
                                SizedBox(height:10),
                                Container(
                                    child: Text("Requirements Analysis",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Orbitron',
                                      ),)
                                ),
                                SizedBox(height:20),
                              ],
                            ),
                            Positioned(
                              child: Container(
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
                              top: 20,
                              right: 0,
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

                  //Button 3
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SelectLevel()),
                          );
                        },//Need to link to the next page
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: <Widget>[
                            Positioned(
                              child: Container(
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
                              top: 20,
                              //right: 0,
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height:20),
                                  Container(
                                    child: Text("Stage 3",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 27,
                                        fontFamily: 'Orbitron',),
                                    ),
                                  ),
                                  SizedBox(height:10),
                                  Container(
                                      child: Text("Requirements Specifications",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Orbitron',
                                        ),)
                                  ),
                                  SizedBox(height:20),
                                ],
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

                  //Button 4
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SelectLevel()),
                          );
                        },//Need to link to the next page
                        child: Stack(
                          //alignment: Alignment.topRight,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height:20),
                                Container(
                                  child: Text("Stage 4",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27,
                                      fontFamily: 'Orbitron',),
                                  ),
                                ),
                                SizedBox(height:10),
                                Container(
                                    child: Text("Requirements XYZZZ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Orbitron',
                                      ),)
                                ),
                                SizedBox(height:20),
                              ],
                            ),
                            Positioned(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("15/40"),
                                ),
                              ),
                              top: 20,
                              right: 0,
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


                  //Button 5 - LOCKED
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                          child: RaisedButton(
                            onPressed: (){
                            },//Need to link to the next page
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    SizedBox(height:20),
                                    Container(
                                      child: Text("Stage 5",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.w500,
                                          fontSize: 27,
                                          fontFamily: 'Orbitron',),
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Container(
                                        child: Text("Requirements Elicitation",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 20,
                                            fontFamily: 'Orbitron',
                                          ),)
                                    ),
                                    SizedBox(height:20),
                                  ],
                                ),
                                Positioned(
                                  child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey[600],
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text("35/50",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                      ),),
                                    ),
                                  ),
                                  top: 20,
                                  right: 0,
                                ),
                                Icon(
                                    Icons.lock,
                                    size: 60,
                                    color: Colors.grey[800]),
                              ],
                            ),
                            color: Colors.grey[400],
                            shape: new RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.black),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),

                  //Button 6
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: RaisedButton(
                        onPressed: (){
                        },//Need to link to the next page
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height:20),
                                Container(
                                  child: Text("Stage 6",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27,
                                      fontFamily: 'Orbitron',),
                                  ),
                                ),
                                SizedBox(height:10),
                                Container(
                                    child: Text("Requirements Elicitation",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 20,
                                        fontFamily: 'Orbitron',
                                      ),)
                                ),
                                SizedBox(height:20),
                              ],
                            ),
                            Positioned(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[600],
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("35/50",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),),
                                ),
                              ),
                              top: 20,
                              right: 0,
                            ),
                            Icon(
                                Icons.lock,
                                size: 60,
                                color: Colors.grey[800]),
                          ],
                        ),
                        color: Colors.grey[400],
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),

                  //Button 7
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: RaisedButton(
                        onPressed: (){
                        },//Need to link to the next page
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height:20),
                                Container(
                                  child: Text("Stage 7",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27,
                                      fontFamily: 'Orbitron',),
                                  ),
                                ),
                                SizedBox(height:10),
                                Container(
                                    child: Text("Requirements Elicitation",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 20,
                                        fontFamily: 'Orbitron',
                                      ),)
                                ),
                                SizedBox(height:20),
                              ],
                            ),
                            Positioned(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[600],
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("35/50",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),),
                                ),
                              ),
                              top: 20,
                              right: 0,
                            ),
                            Icon(
                                Icons.lock,
                                size: 60,
                                color: Colors.grey[800]),
                          ],
                        ),
                        color: Colors.grey[400],
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),


                  //Button 8
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: RaisedButton(
                        onPressed: (){
                        },//Need to link to the next page
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height:20),
                                Container(
                                  child: Text("Stage 8",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27,
                                      fontFamily: 'Orbitron',),
                                  ),
                                ),
                                SizedBox(height:10),
                                Container(
                                    child: Text("Requirements Elicitation",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 20,
                                        fontFamily: 'Orbitron',
                                      ),)
                                ),
                                SizedBox(height:20),
                              ],
                            ),
                            Positioned(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[600],
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("35/50",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),),
                                ),
                              ),
                              top: 20,
                              right: 0,
                            ),
                            Icon(
                                Icons.lock,
                                size: 60,
                                color: Colors.grey[800]),
                          ],
                        ),
                        color: Colors.grey[400],
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),


                  //Button 9
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: RaisedButton(
                        onPressed: (){
                        },//Need to link to the next page
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height:20),
                                Container(
                                  child: Text("Stage 9",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27,
                                      fontFamily: 'Orbitron',),
                                  ),
                                ),
                                SizedBox(height:10),
                                Container(
                                    child: Text("Requirements Elicitation",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 20,
                                        fontFamily: 'Orbitron',
                                      ),)
                                ),
                                SizedBox(height:20),
                              ],
                            ),
                            Positioned(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[600],
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("35/50",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),),
                                ),
                              ),
                              top: 20,
                              right: 0,
                            ),
                            Icon(
                                Icons.lock,
                                size: 60,
                                color: Colors.grey[800]),
                          ],
                        ),
                        color: Colors.grey[400],
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                   Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                        child: RaisedButton(
                            onPressed: (){

                            },//Need to link to the next page
                            child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                          Column(
                          children: <Widget>[
                              SizedBox(height:20),
                              Container(
                                child: Text("Stage 10",
                                    style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 27,
                                    fontFamily: 'Orbitron',),
                                    ),
                                ),
                              SizedBox(height:10),
                              Container(
                                  child: Text("Requirements Elicitation",
                                    style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 20,
                                    fontFamily: 'Orbitron',
                                    ),)
                                ),
                            SizedBox(height:20),
                               ],
                              ),
                            Positioned(
                                child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                    border: Border.all(
                                    color: Colors.grey[600],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    ),
                                       child: Center(
                                            child: Text("35/50",
                                                  style: TextStyle(
                                                  color: Colors.grey[600],
                                                  ),),
                                        ),
                                  ),
                                    top: 20,
                                    right: 0,
                            ),
                             Icon(
                                Icons.lock,
                                size: 60,
                                color: Colors.grey[800]),
                                ],
                                ),
                          color: Colors.grey[400],
                          shape: new RoundedRectangleBorder(
                          side: BorderSide(
                          color: Colors.black),
                          borderRadius: new BorderRadius.circular(10.0),
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


//SELECT LEVEL PAGE
class SelectLevel extends StatelessWidget {
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
            size: 30,
          ),
          onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelectStage()),
          );}, //Need to link to previous page
        ),
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
                    child: Text("Requirement Analysis", //Hardcoded, need to change
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
                      child: RaisedButton(
                        onPressed: (){},//Need to link to the next page
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
                        onPressed: (){},//Need to link to the next page
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
                        onPressed: (){},//Need to link to the next page
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
                        onPressed: (){},//Need to link to the next page
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
                        onPressed: (){},//Need to link to the next page
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
                Expanded(
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: RaisedButton(
                        onPressed: (){},//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 6",
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
                        onPressed: (){},//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 7",
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
                        onPressed: (){},//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 8",
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
                        onPressed: (){},//Need to link to the next page
                        child:  Row(
                          children: <Widget>[
                            //SizedBox(height:20),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text("Level 9",
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
                    child:
                    RaisedButton(
                      onPressed: (){},//Need to link to the next page
                      child:  Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              //SizedBox(height:20),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                                child: Text("Level 10",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 27,
                                    fontFamily: 'Orbitron',
                                  ),
                                ),
                              ),
                              Icon(
                                  Icons.lock,
                                  size: 60,
                                  color: Colors.grey[800]),

                              SizedBox(width:40),

                              Positioned(
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[600],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text("35/50",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                      ),),
                                  ),
                                ),
                                top: 20,
                                right: 0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.grey[400],
                      shape: new RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black),
                        borderRadius: new BorderRadius.circular(10.0),
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



