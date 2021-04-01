import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/Controller/LevelLeaderBoardController.dart';
import 'package:ssadgame/Controller/PvPLeaderBoardController.dart';

class PvPLeaderBoardPage extends StatefulWidget {
  @override
  _PvPLeaderBoardPageState createState() => _PvPLeaderBoardPageState();
}

class _PvPLeaderBoardPageState extends State<PvPLeaderBoardPage> {
  List<LevelInfo> levelList;

  void initState(){
    super.initState();
    PvPLeaderBoardController().loadLevelInfo();
    levelList = PvPLeaderBoardController().sortList();
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
                      onTap: () {
                        Navigator.popAndPushNamed(
                            context, '/AdventureLeaderBoardPage');
                      },
                      child: Card(
                        elevation: 4.0,
                        color: Colors.white,
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
                      //onTap: () => ....
                      child: Card(
                        elevation: 4.0,
                        color: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          side: BorderSide(width: 1.25, color: Colors.black),
                        ),
                        child: Center(
                          child: Text("PvP"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Search bar
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
                        showSearch(context: context, delegate: PvPLeaderBoardController());
                      },
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5)),
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[Text("    Search for level")],
                        ),
                      ),
                    ),
                  ),
                ],
              ),),

            /// Level name | Rating | Challenge
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: 235,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text("Level Name"),
                    ),
                    Container(
                      width: 75,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text("Rating"),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Challenge"),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// Scrollable list of levels
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: PvPLeaderBoardController().itemCount(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              width: 235,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: GestureDetector(
                                  child: Text((index + 1).toString() +
                                      ". " +
                                      levelList[index].title),
                                  onTap: () {
                                    LevelLeaderBoardController().setSelectedLevel(levelList[index].title);
                                    Navigator.popAndPushNamed(
                                        context, '/LevelLeaderBoardPage');
                                  }
                              ),
                            ),
                            Container(
                              width: 75,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child:
                              Text(levelList[index].ratings.toStringAsFixed(2)),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_sharp,
                                      size: 30),
                                  onPressed: () {print("Go to selected level");},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
