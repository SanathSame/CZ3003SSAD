import 'dart:core';
import 'dart:core';
import 'package:flutter/material.dart';

class LevelLeaderBoardController{
  static final LevelLeaderBoardController _leaderBoardController =
  LevelLeaderBoardController._internal();

  factory LevelLeaderBoardController() {
    return _leaderBoardController;
  }

  LevelLeaderBoardController._internal();

  String selectedLevel = "";

  /// Sorted Map by Scores
  Map<String, int> sortedByScoresS = {
    'Peter Ng': 20,
    'Bob Lee': 20,
    'Bryan Goh': 18,
    'Alvin Low': 17,
    'Tommy Chua': 17,
    'Daniel Phua': 16,
    'Derrick Lee': 15,
    'Derrick Goh': 15,
    'Alred Goh': 14,
    'Daniel Poh': 13,
    'Tommy Lim': 12,
    'Jovan Low': 11,
  };


  /// Sorted By Time
  Map<String, int> sortedByTimeT = {
    'Tommy Lim': 53,
    'Derrick Lee': 57,
    'Daniel Phua': 62,
    'Bryan Goh': 62,
    'Jovan Low': 64,
    'Alvin Low': 65,
    'Bob Lee': 66,
    'Daniel Poh': 67,
    'Derrick Goh': 68,
    'Alred Goh': 70,
    'Tommy Chua': 71,
    'Peter Ng': 77,
  };

  Map<String, int> sortedByScoresT = {};
  Map<String, int> sortedByTimeS ={};

  int _myPosition;
  String _myTime;
  int _myScore;

  int get myPosition => _myPosition;

  String get myTime => _myTime;

  int get myScore => _myScore;

  /// Get my information then calculate position based leaderBoard type
  /// aaaaa
  void myInformation(String leaderBoardType) {
    if (leaderBoardType == 'time') {
      this._myPosition = 9;
    } else {
      this._myPosition = 4;
    }
    this._myTime = "1m 22s";
    this._myScore = 17;
  }

  /// Set selected level from PvP Leader Board
  void setSelectedLevel(String level) {
    this.selectedLevel = level;
  }
  /// Get selected level and display on Level Leader Board
  String getSelectedLevel() {
    return selectedLevel;
  }


  String getName(String leaderBoardType, int index) {
    if (leaderBoardType == 'scores') {
      return sortedByScoresS.keys.elementAt(index);
    } else {
      return sortedByTimeT.keys.elementAt(index);
    }
  }

  int getScores(String listName, int index) {
    if (listName == 'scores') {
      return sortedByScoresS.values.elementAt(index);
    } else {
      return sortedByTimeS.values.elementAt(index);
    }
  }

  String getTimes(String listName, int index) {
    if (listName == 'scores') {
      if (sortedByScoresT.values.elementAt(index) >= 60) {
        return ((sortedByScoresT.values.elementAt(index) ~/ 60).toString() +
            'm ' +
            sortedByScoresT.values.elementAt(index).remainder(60).toString() +
            's');
      } else {
        return (sortedByScoresT.values.elementAt(index).toString() + 's');
      }
    } else {
      if (sortedByTimeT.values.elementAt(index) >= 60) {
        return ((sortedByTimeT.values.elementAt(index) ~/ 60).toString() +
            'm ' +
            sortedByTimeT.values.elementAt(index).remainder(60).toString() +
            's');
      } else {
        return (sortedByTimeT.values.elementAt(index).toString() + 's');
      }
    }
  }

  void sortMap(){
    int j = 0;
    String theKey;
    int theValue;

    for(int i=sortedByScoresS.length; i>0; i--){
      theKey = sortedByScoresS.keys.elementAt(j);
      theValue = sortedByTimeT[theKey];
      sortedByScoresT[theKey] = theValue;
      j++;
    }
    j=0;

    for(int i=sortedByTimeT.length; i>0; i--){
      theKey = sortedByTimeT.keys.elementAt(j);
      theValue = sortedByScoresS[theKey];
      sortedByTimeS[theKey] = theValue;
      j++;
    }
  }

  int itemCount(){
    if(sortedByScoresS.length < 50){
      return sortedByScoresS.length;
    }
    return 50;
  }

}

