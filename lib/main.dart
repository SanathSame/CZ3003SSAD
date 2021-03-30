import 'package:flutter/material.dart';
import 'package:ssadgame/Boundary_classes/LoginPage.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
