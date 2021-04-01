import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class TeacherAssignment {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  String userId = FirebaseAuth.instance.currentUser.uid;

  //Test function to see whether firestore is connected and working
  Future<void> updateUserData(String gender) async {
    return await users.doc(userId).set({
      'Gender': gender,
    });
  }
}
