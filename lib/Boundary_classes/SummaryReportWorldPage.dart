import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/Controller/SummaryReportController.dart';

class SummaryReportWorldPage extends StatefulWidget {
  @override
  _SummaryReportWorldPageState createState() => _SummaryReportWorldPageState();
//overide createState to create a State object.
}

class _SummaryReportWorldPageState extends State<SummaryReportWorldPage> {
  int _value = 1;

  List<String> worldList = [
    'Requirement Specification',
    'Other World Name',
    'Other World Name2',
    'Other World Name3',
    'Other World Name4'
  ];

  List<int> avgScoreList = [214,157,212,134,166];
  List<int> unlockedList = [65,67,69,52,52];
  List<int> selectedList = [214,157,212,134,166];
  int totalScore = 250;
  int totalStudents = 80;
  int selectedTotal = 250;

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
          "Summary Report (World)",
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
                      child: Text("Worlds"),
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
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                              if(value==1){
                                selectedList = avgScoreList;
                                selectedTotal = totalScore;
                              }
                              else{
                                selectedList = unlockedList;
                                selectedTotal = totalStudents;
                              }
                            });
                          }),
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
                                  /// Padding
                                  Text(""),
                                  Text(worldList[index]),
                                  /// Padding
                                  Text(""),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, '/SummaryReportStagePage');
                                      SummaryReportController().setSelectedStage(worldList[index]);
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(18.0),
                                          side: BorderSide(
                                            color: Colors.black,
                                            width: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: Text("View Stages"),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              alignment: Alignment.center,
                              child: Text(selectedList[index].toString() + "/" + selectedTotal.toString()),
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
