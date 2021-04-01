import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/Controller/AdventureLeaderBoardController.dart';
import 'package:ssadgame/Controller/PvPLeaderBoardController.dart';

class AdventureLeaderBoardPage extends StatefulWidget {
  @override
  _AdventureLeaderBoardPageState createState() =>
      _AdventureLeaderBoardPageState();
}

class _AdventureLeaderBoardPageState extends State<AdventureLeaderBoardPage> {
  List<StudentInfo> studentList;

  void initState(){
    super.initState();
    studentList = AdventureLeaderBoardController().loadStudentInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/HomePage');
          },
        ),
        centerTitle: true,
        title: Text(
          "Leaderboards",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 100,
                    child: GestureDetector(
                      child: Card(
                        elevation: 4.0,
                        color: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          side: BorderSide(width: 1.25, color: Colors.black),
                        ),
                        child: Center(
                          child: Text("Adventure"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(
                            context, '/PvPLeaderBoardPage');
                      },
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          side: BorderSide(width: 2, color: Colors.black),
                        ),
                        child: Center(
                          child: Text("PVP"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    width: 1.25,
                    color: Colors.black,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 50,
                    child: GestureDetector(
                      onTap: () {
                        showSearch(
                            context: context,
                            delegate: AdventureLeaderBoardController());
                      },
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[Text("    Search for name")],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.9,
              child: ListView.builder(
                itemCount: AdventureLeaderBoardController().itemCount(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.6,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Text((index + 1).toString() + ".",
                                    style: TextStyle(fontSize: 20)),
                                Text("   "), //Padding
                                Icon(Icons.face, size: 65),
                                Text("  "), //Padding
                                Text(studentList[index].name,
                                    style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(studentList[index].score.toString(),
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 1.6,
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: <Widget>[
                              Text(AdventureLeaderBoardController().myPosition().toString(), style: TextStyle(fontSize: 20)),
                              Icon(Icons.face, size: 65),
                              Text("  "),
                              Text(AdventureLeaderBoardController().myInfo().name + " (ME)",
                                  style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(AdventureLeaderBoardController().myInfo().score.toString(), style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
