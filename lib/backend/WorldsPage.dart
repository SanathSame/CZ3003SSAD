import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ssadgame/backend/WorldsModel.dart';
import 'package:ssadgame/backend/WorldsController.dart';

class WorldsPage extends StatefulWidget {
  @override
  _WorldsPageState createState() => new _WorldsPageState();
}

class _WorldsPageState extends State<WorldsPage> {
  int length = 0;
  List worldsList = [];

  //WorldsController _worldsController = new WorldsController();
  //List<WorldsModel> _worldsList = new List<WorldsModel>();
  //Map<String, List<WorldsModel>> _worldsMap = new Map<String, List<WorldsModel>>();

  void loadWorlds() async {
    await FirebaseFirestore.instance.collection('worlds').orderBy('world').get().then((value) {
      value.docs.forEach((element) {
        setState(() {
          worldsList.add(element['world']);
          length = worldsList.length;
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loadWorlds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Navigator.pop(context, false),),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: length,
                itemBuilder: (context, index) {
                  var keys = worldsList;

                  return Card(
                    child: ListTile(
                      title: Text(worldsList[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}