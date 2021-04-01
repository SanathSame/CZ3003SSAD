import 'package:ssadgame/Boundary_classes/characterSelection.dart';
import 'package:flutter/material.dart';

class GameMode extends StatefulWidget {
  @override
  _GameModeState createState() => _GameModeState();
}

class _GameModeState extends State<GameMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/HomePage');
          },
        ),
      ),

      body: Column(
        children: [
          Container(
            decoration: new BoxDecoration(color: Colors.white),
          ),


          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/Human.png',
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
                      Navigator.popAndPushNamed(context, '/characterSelection');
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
      )

    );
  }
}
