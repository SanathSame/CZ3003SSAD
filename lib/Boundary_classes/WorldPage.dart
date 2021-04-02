import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/Boundary_classes/StagePage.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
  String userId = FirebaseAuth.instance.currentUser.uid;

  @override
  Widget build(BuildContext context) {
    print(userId);
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
      body: Column(
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

          StreamBuilder(
            stream: FirebaseFirestore.instance.collection('worlds').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        DocumentSnapshot ds = snapshot.data.docs[index];
                        DocumentSnapshot ds2 = snapshot.data.docs[index + 1];
                        print(ds['score']);
                        return Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: (ds['score'][userId] == '0')
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 150,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.grey,
                                        ),
                                        child: Stack(
                                          children: [
                                            Text(
                                              ds['world'],
                                              textAlign: TextAlign.center,
                                            ),
                                            Icon(Icons.lock, size: 45),
                                          ],
                                        ))
                                    : GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StagePage(
                                                        title: ds['world'],
                                                        worldName: ds.id,
                                                      )));
                                        },
                                        child: Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  ds['world'] + '\n',
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(ds['score'][userId] == null
                                                    ? "0"
                                                    : ds['score'][userId] +
                                                        "/250"),
                                              ],
                                            )),
                                      ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: (ds2['score'][userId] == '0')
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 150,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.grey,
                                        ),
                                        child: Stack(
                                          children: [
                                            Text(
                                              ds2['world'],
                                              textAlign: TextAlign.center,
                                            ),
                                            Icon(Icons.lock, size: 45),
                                          ],
                                        ))
                                    : GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StagePage(
                                                        title: ds2['world'],
                                                        worldName: ds2.id,
                                                      )));
                                        },
                                        child: Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.black),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  ds2['world'] + '\n',
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(
                                                    ds2['score'][userId] == null
                                                        ? "0"
                                                        : ds2['score'][userId] +
                                                            "/250"),
                                              ],
                                            )),
                                      ),
                              ),
                            ],
                          ),
                        );
                      }
                      return SizedBox();
                    });
              } else {
                return new SizedBox();
              }
            },
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       right: MediaQuery.of(context).size.width / 2.5,
          //       bottom: MediaQuery.of(context).size.height / 2),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: (lock[0] == true)
          //         ? Container(
          //             alignment: Alignment.center,
          //             width: 130,
          //             height: 130,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(color: Colors.black),
          //               color: Colors.grey,
          //             ),
          //             child: Stack(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(top: 15),
          //                   child: Text("World 1"),
          //                 ),
          //                 Icon(Icons.lock, size: 45),
          //               ],
          //             ))
          //         : GestureDetector(
          //             onTap: () {
          //               Navigator.popAndPushNamed(context, '/StagePage');
          //             },
          //             child: Container(
          //                 width: 130,
          //                 height: 130,
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   border: Border.all(color: Colors.black),
          //                 ),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Text("World 1"),
          //                     Text(""),
          //                     Text(worldScore.toString() + "/250"),
          //                   ],
          //                 )),
          //           ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width / 2.5,
          //       bottom: MediaQuery.of(context).size.height / 2),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: (lock[1] == true)
          //         ? Container(
          //             alignment: Alignment.center,
          //             width: 130,
          //             height: 130,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(color: Colors.black),
          //               color: Colors.grey,
          //             ),
          //             child: Stack(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(top: 15),
          //                   child: Text("World 2"),
          //                 ),
          //                 Icon(Icons.lock, size: 45),
          //               ],
          //             ))
          //         : GestureDetector(
          //             onTap: () {
          //               print("TAPPED");
          //             },
          //             child: Container(
          //                 width: 130,
          //                 height: 130,
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   border: Border.all(color: Colors.black),
          //                 ),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Text("World 2"),
          //                     Text(""),
          //                     Text(worldScore.toString() + "/250"),
          //                   ],
          //                 )),
          //           ),
          //   ),
          // ),
          // Padding(
          //   padding:
          //       EdgeInsets.only(right: MediaQuery.of(context).size.width / 2.5),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: (lock[2] == true)
          //         ? Container(
          //             alignment: Alignment.center,
          //             width: 130,
          //             height: 130,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(color: Colors.black),
          //               color: Colors.grey,
          //             ),
          //             child: Stack(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(top: 15),
          //                   child: Text("World 3"),
          //                 ),
          //                 Icon(Icons.lock, size: 45),
          //               ],
          //             ))
          //         : GestureDetector(
          //             onTap: () {
          //               print("TAPPED");
          //             },
          //             child: Container(
          //                 width: 130,
          //                 height: 130,
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   border: Border.all(color: Colors.black),
          //                 ),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Text("World 3"),
          //                     Text(""),
          //                     Text(worldScore.toString() + "/250"),
          //                   ],
          //                 )),
          //           ),
          //   ),
          // ),
          // Padding(
          //   padding:
          //       EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.5),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: (lock[3] == true)
          //         ? Container(
          //             alignment: Alignment.center,
          //             width: 130,
          //             height: 130,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(color: Colors.black),
          //               color: Colors.grey,
          //             ),
          //             child: Stack(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(top: 15),
          //                   child: Text("World 4"),
          //                 ),
          //                 Icon(Icons.lock, size: 45),
          //               ],
          //             ))
          //         : GestureDetector(
          //             onTap: () {
          //               print("TAPPED");
          //             },
          //             child: Container(
          //                 width: 130,
          //                 height: 130,
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   border: Border.all(color: Colors.black),
          //                 ),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Text("World 4"),
          //                     Text(""),
          //                     Text(worldScore.toString() + "/250"),
          //                   ],
          //                 )),
          //           ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       right: MediaQuery.of(context).size.width / 2.5,
          //       top: MediaQuery.of(context).size.height / 2),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: (lock[4] == true)
          //         ? Container(
          //             alignment: Alignment.center,
          //             width: 130,
          //             height: 130,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(color: Colors.black),
          //               color: Colors.grey,
          //             ),
          //             child: Stack(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(top: 15),
          //                   child: Text("World 5"),
          //                 ),
          //                 Icon(Icons.lock, size: 45),
          //               ],
          //             ))
          //         : GestureDetector(
          //             onTap: () {
          //               print("TAPPED");
          //             },
          //             child: Container(
          //                 width: 130,
          //                 height: 130,
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   border: Border.all(color: Colors.black),
          //                 ),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Text("World 5"),
          //                     Text(""),
          //                     Text(worldScore.toString() + "/250"),
          //                   ],
          //                 )),
          //           ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width / 2.5,
          //       top: MediaQuery.of(context).size.height / 2),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: (lock[4] == true)
          //         ? Container(
          //             alignment: Alignment.center,
          //             width: 130,
          //             height: 130,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(color: Colors.black),
          //               color: Colors.grey,
          //             ),
          //             child: Stack(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(top: 15),
          //                   child: Text("World 6"),
          //                 ),
          //                 Icon(Icons.lock, size: 45),
          //               ],
          //             ))
          //         : GestureDetector(
          //             onTap: () {
          //               print("TAPPED");
          //             },
          //             child: Container(
          //                 width: 130,
          //                 height: 130,
          //                 decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   border: Border.all(color: Colors.black),
          //                 ),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Text("World 6"),
          //                     Text(""),
          //                     Text(worldScore.toString() + "/250"),
          //                   ],
          //                 )),
          //           ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
