import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/Controller/SummaryReportController.dart';

class SummaryReportLevelPage extends StatefulWidget {
  @override
  _SummaryReportLevelPageState createState() => _SummaryReportLevelPageState();
//overide createState to create a State object.
}

class _SummaryReportLevelPageState extends State<SummaryReportLevelPage> {
  int _value = 1;

  List<int> avgScoreList = [10, 10, 9, 8, 8];
  List<int> unlockedList = [67, 67, 69, 65, 69];
  List<int> reattemptList = [60, 64, 72, 60, 65];
  List<int> selectedList = [10, 10, 9, 8, 8];

  int totalScore = 10;
  int totalStudents = 80;
  int selectedTotal = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
        ),
        centerTitle: true,
        title: Text(
          "Summary Report (Level)",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(SummaryReportController().getSelectedLevel()),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("Average Scores"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("No. of Unlocked"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("No. of Re-Attempts"),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(
                                () {
                              _value = value;
                              switch (_value) {
                                case 1:
                                  {
                                    selectedList = avgScoreList;
                                    selectedTotal = totalScore;
                                  }
                                  break;

                                case 2:
                                  {
                                    selectedList = unlockedList;
                                    selectedTotal = totalStudents;
                                  }
                                  break;

                                case 3:
                                  {
                                    selectedList = reattemptList;
                                    selectedTotal = totalStudents;
                                  }
                                  break;
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 140,
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
                              width: MediaQuery.of(context).size.width * 0.5,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Level " + (index + 1).toString()),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              alignment: Alignment.center,
                              child: Text(selectedList[index].toString() +
                                  "/" +
                                  selectedTotal.toString()),
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
