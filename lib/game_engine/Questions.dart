import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  // _QuestionState createState() => _QuestionState();

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Questions> {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {

              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => Questions()));
            }),
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
