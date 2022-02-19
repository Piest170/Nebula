// ignore_for_file: prefer_final_fields

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String name;
  final String email;
  UserModel({required this.name, required this.uid, required this.email});
}

class UserService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _firestore.collection("users").add({
      "name": user.name,
      "uid": user.uid,
    });
  }
}
