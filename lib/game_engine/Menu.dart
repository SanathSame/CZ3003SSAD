import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/game_engine/game.dart';
import 'package:ssadgame/game_engine/Questions.dart';

class Menu extends StatefulWidget {
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Widget getQuestions() {
    BuildContext context = this.context;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(children: <Widget>[
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Start Game'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Questions()),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(children: <Widget>[
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Start Game'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Game()),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
