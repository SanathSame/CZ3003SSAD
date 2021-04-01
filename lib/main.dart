import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'Boundary_classes/LoginPage.dart';
import 'Boundary_classes/HomePage.dart';
import 'Boundary_classes/choices.dart';
import 'Boundary_classes/characterSelection.dart';
import 'Boundary_classes/WorldPage.dart';
import 'Boundary_classes/StagePage.dart';
import 'Boundary_classes/LevelPage.dart';
import 'Boundary_classes/AdventureLeaderBoardPage.dart';
import 'Boundary_classes/PvPLeaderBoardPage.dart';
import 'Boundary_classes/LevelLeaderBoardPage.dart';
import 'Boundary_classes/SummaryReportWorldPage.dart';
import 'Boundary_classes/SummaryReportLevelPage.dart';
import 'Boundary_classes/SummaryReportStagePage.dart';

import 'Boundary_classes/Teacher/WorldPage_Teacher.dart';

import 'game_engine/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Hides the Status bar
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/HomePage',
      routes: {
        '/LoginPage': (context) => LoginPage(),
        '/HomePage': (context) => HomePage(),
        '/choices': (context) => GameMode(),
        '/characterSelection': (context) => CharacterSelection(),
        '/WorldPage': (context) => WorldPage(),
        '/StagePage': (context) => StagePage(),
        '/LevelPage': (context) => LevelPage(),
        '/game_engine/main': (context) => GameEngine(),
        '/AdventureLeaderBoardPage': (context) => AdventureLeaderBoardPage(),
        '/PvPLeaderBoardPage': (context) => PvPLeaderBoardPage(),
        '/LevelLeaderBoardPage': (context) => LevelLeaderBoardPage(),
        '/WorldPage_Teacher' : (context) => WorldPage_Teacher(),
        '/SummaryReportWorldPage': (context) => SummaryReportWorldPage(),
        '/SummaryReportStagePage': (context) => SummaryReportStagePage(),
        '/SummaryReportLevelPage': (context) => SummaryReportLevelPage(),

      });
  }
}