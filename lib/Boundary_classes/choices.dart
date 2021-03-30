import 'file:///C:/Users/ASUS/Desktop/CZ3003SSAD/lib/Boundary_classes/characterSelection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: GameMode(),
          ),
        ),
      ),
    );
  }
}

class GameMode extends StatefulWidget {
  @override
  _GameModeState createState() => _GameModeState();
}

class _GameModeState extends State<GameMode> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Image.asset(
                'images/Human.png',
                height: 70,
                width: 70,
              ),
              Text(
                'Bryan Goh: 22',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 3,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Select Game Mode',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 3,
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    print("Adventure mode chosen");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CharSelection()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Adventure',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ),
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 3,
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    print("PVP mode chosen");
                  },
                  child: Center(
                    child: Text(
                      'PvP',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
