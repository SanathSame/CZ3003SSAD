import 'package:flutter/material.dart';

class PvPLeaderBoardController extends SearchDelegate<LevelInfo> {
  static final PvPLeaderBoardController _pleaderBoardController =
  PvPLeaderBoardController._internal();

  factory PvPLeaderBoardController() {
    return _pleaderBoardController;
  }

  PvPLeaderBoardController._internal();

  List<LevelInfo> levelList;

  LevelInfo chosenLevel;

  List<LevelInfo> loadLevelInfo() {
    levelList = [
      LevelInfo(
        title: "Level Horizon",
        nameOfCreator: "Daniel Chua",
        ratings: 4.88,
      ),
      LevelInfo(
        title: "Level Funny",
        nameOfCreator: "Alfred Goh",
        ratings: 4.66,
      ),
      LevelInfo(
        title: "Bobby's Level",
        nameOfCreator: "Bobby Lee",
        ratings: 4.33,
      ),
      LevelInfo(
        title: "Peter Pan Level",
        nameOfCreator: "Peter Pan",
        ratings: 3.80,
      ),
      LevelInfo(
        title: "Level Moon",
        nameOfCreator: "Peter Pan",
        ratings: 4.80,
      ),
      LevelInfo(
        title: "Tesla",
        nameOfCreator: "Peter Pan",
        ratings: 4.73,
      ),
      LevelInfo(
        title: "Level Stars",
        nameOfCreator: "Peter Pan",
        ratings: 4.72,
      ),
      LevelInfo(
        title: "Advanced Questions",
        nameOfCreator: "Peter Pan",
        ratings: 4.68,
      ),
      LevelInfo(
        title: "Mid Years Prep",
        nameOfCreator: "Peter Pan",
        ratings: 4.65,
      ),
      LevelInfo(
        title: "Supreme Stage",
        nameOfCreator: "Peter Pan",
        ratings: 4.50,
      ),
      LevelInfo(
        title: "Fifth Difficulty",
        nameOfCreator: "Peter Pan",
        ratings: 4.46,
      ),
      LevelInfo(
        title: "Arrival Quiz",
        nameOfCreator: "Peter Pan",
        ratings: 4.32,
      ),
      LevelInfo(
        title: "Ten Year Series",
        nameOfCreator: "Peter Pan",
        ratings: 4.22,
      ),
    ];

    return levelList;
  }

  List<LevelInfo> sortList() {
    /// Sorted by ratings
    levelList.sort((a, b) => b.ratings.compareTo(a.ratings));
    return levelList;
  }

  int itemCount() {
    if (levelList.length > 50) {
      return 50;
    }
    return levelList.length;
  }

  /// Search bar stuff
  @override
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
    levelList = query.isEmpty
        ? loadLevelInfo()
        : loadLevelInfo().where((p) => p.title.contains(query)).toList();
    return levelList.isEmpty
        ? Text(
      "No Results Found...",
      style: TextStyle(fontSize: 20),
    )
        : ListView.builder(
      itemCount: levelList.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              width: 235,
              child:
              ListTile(
                title: Text(levelList[index].title),
                subtitle: Text(
                    "Level made by: " + levelList[index].nameOfCreator),
                onTap: () {
                  chosenLevel = levelList[index];
                  close(context, null);
                },
              ),
            ),
            Expanded(
              child: Text("Challenge"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    levelList = query.isEmpty
        ? loadLevelInfo()
        : loadLevelInfo().where((p) => p.title.contains(query)).toList();
    return levelList.isEmpty
        ? Text(
      "No Results Found...",
      style: TextStyle(fontSize: 20),
    )
        : ListView.builder(
      itemCount: levelList.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(levelList[index].title),
            subtitle:
            Text("Level made by: " + levelList[index].nameOfCreator),
            onTap: () {
              close(context, null);
            });
      },
    );
  }
}

class LevelInfo {
  final String title;
  final String nameOfCreator;
  final double ratings;

  LevelInfo({
    this.title,
    this.nameOfCreator,
    this.ratings,
  });
}
