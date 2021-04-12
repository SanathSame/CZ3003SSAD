import 'dart:collection';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import 'choices.dart';

final usersRef = FirebaseFirestore.instance.collection('users');

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String userId = FirebaseAuth.instance.currentUser.uid;


   @override
   void initState() {

     checkTeacherAccount();
     super.initState();
   }

   checkTeacherAccount() async {

     await FirebaseFirestore.instance
         .collection('users')
         .doc(userId)
         .get()
         .then((DocumentSnapshot documentSnapshot) {

           print(documentSnapshot.data());
       if (documentSnapshot.data() != null) {
         print('Document exists on the database');
       }
       else {print ('no');}
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(


          children: [

            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              image: AssetImage('assets/homepage.png'),
              fit: BoxFit.fill,
            ))),

            Container(
                width: 346.0,
                height: 307.0,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(66,220,2,0),
                    child: ElevatedButton(
                      onPressed: () {
                        checkTeacherAccount();
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(150,0,0,0),
                        child: _titleContainer('Test'),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    )
                )
            ),



            ///Play Button
            Container(
              width: 346.0,
              height: 407.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(66,320,2,0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/choices');
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(150,0,0,0),
                      child: _titleContainer('Play'),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                  )
              )
            ),

            ///Leaderboards Button
            Container(
                width: 347.0,
                height: 540.0,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(68,453,2,0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/AdventureLeaderBoardPage');
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40,0,0,0),
                        child: _titleContainer('Leaderboards'),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    )
                )
            ),

            ///Settings Button
            Container(
                width: 347.0,
                height: 670.0,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(67,587,2,0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SettingsPage()),
                        // );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40,0,0,0),
                        child: _titleContainer('Settings'),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    )
                )
            ),

          ],

        ));
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    );
}
