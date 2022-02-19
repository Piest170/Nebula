// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:nebula/actions/user.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  register(String email, String password, String name) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      await UserService().createUser(UserModel(
        name: name,
        uid: userCredential.user!.uid,
        email: email,
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: "cosp@gmail.com", password: "123456");
      print(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
