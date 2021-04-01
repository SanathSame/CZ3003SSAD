import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class CharSelection extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.0),
//             child: CharacterSelection(),
//           ),
//         ),
//       ),
//     );
//   }
// }

class CharacterSelection extends StatefulWidget {
  _CharacterSelection createState() => _CharacterSelection();
}

class _CharacterSelection extends State<CharacterSelection> {
  int currentCharacter = 0;
  final numCharacter = 2;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/choices');
          },
        ),
        centerTitle: true,
        title: Text(
          "Choose Your Character",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),

      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(color: Colors.white),
          ),

          Container(
            child: Image.asset(
              'assets/images/downArrow.png',
              height: 100,
              width: 100,
            ),
          ),
          Container(
            child: Image.asset(
              'assets/images/character$currentCharacter.png',
              height: 220,
              width: 220,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
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
                  'assets/images/leftArrow.png',
                  height: 100,
                  width: 100,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/WorldPage');
                },
                child: Text(
                    "Confirm",
                  style: TextStyle(
                    color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
                ),


              TextButton(
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
                  'assets/images/rightArrow.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
