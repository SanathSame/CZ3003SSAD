import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/Controller/LevelLeaderBoardController.dart';

class LevelLeaderBoardPage extends StatefulWidget {
  @override
  _LevelLeaderBoardPageState createState() => _LevelLeaderBoardPageState();
//overide createState to create a State object.
}

class _LevelLeaderBoardPageState extends State<LevelLeaderBoardPage> {
  String leaderBoardType = 'time';

  void initState(){
    super.initState();
    LevelLeaderBoardController().myInformation(leaderBoardType);
    LevelLeaderBoardController().sortMap();
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
            Navigator.popAndPushNamed(context, '/PvPLeaderBoardPage');
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
            /// Level name
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
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        side: BorderSide(width: 1, color: Colors.black),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(LevelLeaderBoardController().getSelectedLevel())
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Player Name, Time, Score
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
                    /// Player name
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
                      child: Text("Player Name"),
                    ),

                    /// Time
                    Container(
                      width: 80,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Time "),
                          GestureDetector(
                              child: Icon(Icons.arrow_drop_down_circle_outlined,
                                  size: 16),
                              onTap: () {
                                setState(() {
                                  leaderBoardType = 'time';
                                  LevelLeaderBoardController()
                                      .myInformation(leaderBoardType);
                                });
                              }),
                        ],
                      ),
                    ),

                    /// Score
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Score "),
                            GestureDetector(
                                child: Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    size: 16),
                                onTap: () {
                                  setState(() {
                                    leaderBoardType = 'scores';
                                    LevelLeaderBoardController().myInformation(leaderBoardType);
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 385,
              child: ListView.builder(
                itemCount: LevelLeaderBoardController().itemCount(),
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
                            width: 235,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text((index + 1).toString() + "."),
                                Icon(Icons.face, size: 65),
                                Text(LevelLeaderBoardController()
                                    .getName(leaderBoardType, index)),
                              ],
                            ),
                          ),
                          Container(
                              width: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Text(LevelLeaderBoardController()
                                  .getTimes(leaderBoardType, index))),
                          Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(LevelLeaderBoardController()
                                    .getScores(leaderBoardType, index)
                                    .toString())),
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
                        child: Row(
                          children: [
                            Text(LevelLeaderBoardController().myPosition.toString() +
                                "."),
                            Icon(Icons.face, size: 65),
                            Text("(me)"),
                          ],
                        ),
                      ),
                      Container(
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Text(LevelLeaderBoardController().myTime)),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child:
                          Text(LevelLeaderBoardController().myScore.toString()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
