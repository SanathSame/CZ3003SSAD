import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

//code here

class TeacherAssignment {
  // CollectionReference users = FirebaseFirestore.instance.collection('users');
  String userId = FirebaseAuth.instance.currentUser.uid;

  Future<void> createStage(String worldName, String difficultyLevel,
      String numberOfQuestions, bool timed, String socialMedia) async {
    print("Starting to create stage...");
    FirebaseFirestore.instance
        .collection('created worlds')
        .doc(worldName)
        .set({
          'worldName': worldName,
          'difficultyLevel': difficultyLevel,
          'numberOfQuestions': numberOfQuestions,
          'timed': timed,
          'socialMedia': socialMedia
        })
        .then((value) => print("World Created!"))
        .catchError((error) => print("Failed to create world: $error"));
  }

  Future<void> calculateAverage(String world) {
    List<int> scoreList = [];
    print("Displaying world stages...");
    FirebaseFirestore.instance
        .collection('users')
        .doc('User 1')
        .collection('Adventure Scores')
        .doc('World 1')
        .collection('Stages')
        .doc('Stage 1')
        .collection('Levels')
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((element) {
        print(element.id);
        print(element.data());
        scoreList.add(int.parse(element.data()['score']));
      });
      print(scoreList);
      int sum = 0;
      for (int score in scoreList) {
        sum += score;
      }
      print("Average: " + (sum / scoreList.length).toString()); //average
    });
  }

  Future<void> shareAssignment() {}

  String name = 'name';
  int world = 1;
  String SM = 'fb';
  String diffLvl = 'easy';
  int noOfQues = 14;
  int timed = 20;
  double avgRating = 0.00;

  Future<void> addLevel(
      name, world, noOfQues, SM, timed, diffLvl, avgRating) async {
    FirebaseFirestore.instance
        .collection('created worlds')
        .doc(name)
        .set({
          'difficultyLevel': diffLvl,
          'world': world,
          'numberOfQuestions': noOfQues,
          'socialMedia': SM,
          'timed': timed,
          'worldName': name,
          'averageRating': avgRating
        })
        .then((value) => print("Level Created"))
        .catchError((error) => print("Failed to add level: $error"));
  }
}
