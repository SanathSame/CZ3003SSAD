import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TeacherAssignment {
  String userId = FirebaseAuth.instance.currentUser.uid;

  //Test function to see whether firestore is connected and working
  Future<void> updateUserData(String gender) async {
    print(userId);
    return await FirebaseFirestore.instance
        .collection('users')
        .doc('User 1')
        .set({
      'Gender': gender,
    });
  }

  Future<void> getWorldAverage() async {
    await FirebaseFirestore.instance
        .collection('worlds')
        .get()
        .then((querySnapshot) {
      List<int> worldAverage = [];
      querySnapshot.docs.forEach((world) {
        FirebaseFirestore.instance
            .collection('worlds')
            .doc(world.id)
            .collection('Stage')
            .get()
            .then((querySnapshot2) {
          int worldSum = 0;
          List<int> stageScores = [];
          querySnapshot2.docs.forEach((stage) {
            FirebaseFirestore.instance
                .collection('worlds')
                .doc(world.id)
                .collection('Stage')
                .doc(stage.id)
                .collection('Level')
                .get()
                .then((querySnapshot3) {
              List<int> levelScores = [];
              querySnapshot3.docs.forEach((level) {
                levelScores.add(int.parse(level.data()['score']));
              });
              stageScores.add(1);
            });
          });
        });
      });
    });
  }
}
