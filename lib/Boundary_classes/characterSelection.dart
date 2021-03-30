import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharSelection extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: CharacterSelection(),
          ),
        ),
      ),
    );
  }
}

class CharacterSelection extends StatefulWidget {
  _CharacterSelection createState() => _CharacterSelection();
}

class _CharacterSelection extends State<CharacterSelection> {
  int currentCharacter = 0;
  final numCharacter = 2;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Text(
            'Choose your character',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 3,
        ),
        Container(
          child: Image.asset(
            'images/downArrow.png',
            height: 100,
            width: 100,
          ),
        ),
        Container(
          child: Image.asset(
            'images/character$currentCharacter.png',
            height: 220,
            width: 220,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  print('next character left');
                  if (currentCharacter == 0) {
                    currentCharacter = numCharacter - 1;
                  } else {
                    currentCharacter--;
                  }
                });
              },
              child: Image.asset(
                'images/leftArrow.png',
                height: 100,
                width: 100,
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  print('next character right');
                  if (currentCharacter == numCharacter - 1) {
                    currentCharacter = 0;
                  } else {
                    currentCharacter++;
                  }
                });
              },
              child: Image.asset(
                'images/rightArrow.png',
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
