import 'package:flutter/material.dart';
import 'package:ssadgame/Boundary_classes/select_stage_and_level.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ssadgame/Boundary_classes/HomePage.dart';
import 'backend/WorldsPage.dart';
import 'Boundary_classes/select_stage_and_level.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: WorldsPage(),
  ));
}
