import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorldPage extends StatefulWidget {

  //Passing of data of currentCharacter
  // String characterSelected;
  // WorldPage({this.characterSelected});

  @override
  _WorldPageState createState() => _WorldPageState();
//overide createState to create a State object.
}

class _WorldPageState extends State<WorldPage> {
  var lock = [false, true, true, true, true, true];
  var worldScore = 42;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/HomePage');
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
            padding: EdgeInsets.only(right: 15, top: 15),
            child: Align(
              alignment: Alignment.topRight,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: () {
                    print("World Quiz...");
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          content: Text("Attempt World Quiz 1?"),
                          actions: [
                            TextButton(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButton(
                              child: Text("Confirm"),
                              onPressed: () {
                                print("World Quiz Page");
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text("World Quiz"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / 2.5,
                bottom: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: (lock[0] == true)
                  ? Container(
                  alignment: Alignment.center,
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("World 1"),
                      ),
                      Icon(Icons.lock, size: 45),
                    ],
                  ))
                  : GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, '/StagePage');
                },
                child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("World 1"),
                        Text(""),
                        Text(worldScore.toString() + "/250"),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.5,
                bottom: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: (lock[1] == true)
                  ? Container(
                  alignment: Alignment.center,
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("World 2"),
                      ),
                      Icon(Icons.lock, size: 45),
                    ],
                  ))
                  : GestureDetector(
                onTap: () {
                  print("TAPPED");
                },
                child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("World 2"),
                        Text(""),
                        Text(worldScore.toString() + "/250"),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(right: MediaQuery.of(context).size.width / 2.5),
            child: Align(
              alignment: Alignment.center,
              child: (lock[2] == true)
                  ? Container(
                  alignment: Alignment.center,
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("World 3"),
                      ),
                      Icon(Icons.lock, size: 45),
                    ],
                  ))
                  : GestureDetector(
                onTap: () {
                  print("TAPPED");
                },
                child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("World 3"),
                        Text(""),
                        Text(worldScore.toString() + "/250"),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.5),
            child: Align(
              alignment: Alignment.center,
              child: (lock[3] == true)
                  ? Container(
                  alignment: Alignment.center,
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("World 4"),
                      ),
                      Icon(Icons.lock, size: 45),
                    ],
                  ))
                  : GestureDetector(
                onTap: () {
                  print("TAPPED");
                },
                child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("World 4"),
                        Text(""),
                        Text(worldScore.toString() + "/250"),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / 2.5,
                top: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: (lock[4] == true)
                  ? Container(
                  alignment: Alignment.center,
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("World 5"),
                      ),
                      Icon(Icons.lock, size: 45),
                    ],
                  ))
                  : GestureDetector(
                onTap: () {
                  print("TAPPED");
                },
                child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("World 5"),
                        Text(""),
                        Text(worldScore.toString() + "/250"),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.5,
                top: MediaQuery.of(context).size.height / 2),
            child: Align(
              alignment: Alignment.center,
              child: (lock[4] == true)
                  ? Container(
                  alignment: Alignment.center,
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("World 6"),
                      ),
                      Icon(Icons.lock, size: 45),
                    ],
                  ))
                  : GestureDetector(
                onTap: () {
                  print("TAPPED");
                },
                child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("World 6"),
                        Text(""),
                        Text(worldScore.toString() + "/250"),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
