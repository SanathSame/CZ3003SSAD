import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/LoginController.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ))),
            Builder(builder: (context) {
              return SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Column(
                        children: [
                          Image.asset('assets/SSADGAME.png', scale: 1),
                          SizedBox(height: 20),
                          TextFormField(
                              controller: email,
                              obscureText: false,
                              style: style,
                              validator: (String email) {
                                if (email.isEmpty) {
                                  return 'Email cannot be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.email, color: Colors.grey[450]),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 15, 20, 15),
                                hintText: "Email address",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32)),
                              )),
                          SizedBox(height: 10),
                          TextFormField(
                              controller: password,
                              obscureText: true,
                              style: style,
                              validator: (String password) {
                                if (password.isEmpty) {
                                  return 'Password cannot be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.lock, color: Colors.grey[450]),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 15, 20, 15),
                                hintText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                              )),
                          SizedBox(height: 20),

                          Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              child: MaterialButton(
                                  minWidth: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  onPressed: () async {
                                    // FocusScope.of(context)
                                    //     .requestFocus(FocusNode());
                                    // if (_formKey.currentState.validate()) {
                                    //   if (LoginController.accountInDB(
                                    //       email.text, password.text)) {
                                    //     Navigator.of(context).push(
                                    //         MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 HomePage()));
                                    //   } else {
                                    //     SnackBar sb = SnackBar(
                                    //       content: Text(
                                    //         'The email or password is invalid or the account does not exist',
                                    //         style: TextStyle(
                                    //           fontSize: 16,
                                    //         ),
                                    //       ),
                                    //       backgroundColor: Colors.redAccent,
                                    //       duration: Duration(seconds: 5),
                                    //     );
                                    //     Scaffold.of(context)
                                    //       ..hideCurrentSnackBar()
                                    //       ..showSnackBar(sb);
                                    //   }
                                    // }
                                    try {
                                      UserCredential userCredential =
                                          await FirebaseAuth.instance
                                              .signInWithEmailAndPassword(
                                                  email: email.text,
                                                  password: password.text);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'user-not-found') {
                                        print('No user found for that email.');
                                      } else if (e.code == 'wrong-password') {
                                        print(
                                            'Wrong password provided for that user.');
                                      }
                                    }
                                  },
                                  child: Text("Login",
                                      textAlign: TextAlign.center,
                                      style: style.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )))),
                          SizedBox(height: 10),
                          Text("",
                              style: style.copyWith(
                                color: Colors.black,
                              )),
                          // FlatButton(
                          //   onPressed: (){
                          //     Navigator.of(context).push(
                          //         MaterialPageRoute(
                          //             builder: (context) => RegisterPage())
                          //     );
                          //   },
                          //   child: Text(
                          //       "",
                          //       style: TextStyle(
                          //         color: Colors.white,
                          //         decoration: TextDecoration.underline,
                          //       )),
                          // )
                        ],
                      )),
                ),
              );
            })
          ],
        ));
  }
}
