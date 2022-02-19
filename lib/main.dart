import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Register.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    // ignore: prefer_const_constructors
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: MyApp1(),
      )),
    );
  }
}
