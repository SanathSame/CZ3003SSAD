import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ssadgame/Boundary_classes/levelcreatorUI.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: const Text('PVP'), centerTitle: true),
//           backgroundColor: Colors.white,
//           body: PVPage()),
//     ),
//   );
// }

class PVPage extends StatefulWidget {
  @override
  _PVPageState createState() => _PVPageState();
}

class _PVPageState extends State<PVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,

        appBar: AppBar(
          centerTitle: true,
          title: Text('PVP'),

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


              SizedBox(height: 200.0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => challengeUI()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Row(children: <Widget>[
                      Icon(Icons.whatshot_rounded),
                      SizedBox(width: 20.0),
                      Text("Challenge"),
                    ]),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => levelCreator()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Row(children: <Widget>[
                    Icon(Icons.add_circle_outline_sharp),
                    SizedBox(width: 20.0),
                    Text("Create PVP levels"),
                  ]),
                ),
              )
            ],


        ));
  }
}

class challengeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenge'), centerTitle: true),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        color: Colors.white,
        child: new Container(
          child: new Column(
            children: <Widget>[
              new Text('Level name:'),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter level name",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}