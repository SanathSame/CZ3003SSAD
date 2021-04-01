import 'package:flutter/material.dart';

class AdventureLeaderBoardController extends SearchDelegate<StudentInfo> {
  static final AdventureLeaderBoardController _adventureleaderBoardController =
  AdventureLeaderBoardController._internal();

  factory AdventureLeaderBoardController() {
    return _adventureleaderBoardController;
  }

  AdventureLeaderBoardController._internal();

  List<StudentInfo> studentList;

  List<StudentInfo> loadStudentInfo() {
    studentList = [
      StudentInfo(name: "Daniel Ng", score: 220),
      StudentInfo(name: 'Bryan Goh', score: 170),
      StudentInfo(name: 'Alvin Lee', score: 150),
      StudentInfo(name: 'Richard Chee', score: 100),
      StudentInfo(name: 'Joshua Low', score: 90),
      StudentInfo(name: 'Chris Poon', score: 80),
      StudentInfo(name: 'Keerthana', score: 70)
    ];
    return studentList;
  }


  /// Get method to get my Info
  StudentInfo myInfo() {
    return StudentInfo(name: "Alred Low", score: 42);
  }

  /// Find your position
  int myPosition(){
    return 22;
  }

  /// itemCount for list builder
  int itemCount(){
    if(studentList.length > 50){
      return 50;
    }
    return studentList.length;
  }

  /// Search Bar
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    /// If nothing in textbox, display everything, else only those that start with what is typed in textbox
    studentList = query.isEmpty
        ? loadStudentInfo()
        : loadStudentInfo().where((p) => p.name.contains(query)).toList();
    return studentList.isEmpty
        ? Text(
      "No Results Found...",
      style: TextStyle(fontSize: 20),
    )
        : ListView.builder(
      itemCount: studentList.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(studentList[index].name),
            onTap: () {
              close(context, null);
            });
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    studentList = query.isEmpty
        ? loadStudentInfo()
        : loadStudentInfo().where((p) => p.name.contains(query)).toList();
    return studentList.isEmpty
        ? Text(
      "No Results Found...",
      style: TextStyle(fontSize: 20),
    )
        : ListView.builder(
      itemCount: studentList.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(studentList[index].name),
            onTap: () {
              close(context, null);
            });
      },
    );
  }
}

class StudentInfo {
  final String name;
  final int score;

  StudentInfo({this.name, this.score});
}
