// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:nebula/actions/auth.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text("ok"),
            onPressed: () {
              firestore
                  .collection("test")
                  .add({"cop": "ss"}).then((value) => print("ok"));
            },
          ),
          TextButton(
            child: Text("regiser"),
            onPressed: () {
              // Auth().register("cop@gmail.com", "dadjkajdl");
            },
          ),
          TextButton(
            child: Text("login"),
            onPressed: () {
              Auth().login();
            },
          ),
        ],
      ),
    );
  }
}
