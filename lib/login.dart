// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, must_be_immutable

import 'package:flutter/material.dart';

import 'OrderAll.dart';
import 'Register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp1(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp1 extends StatefulWidget {
  MyApp1({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  get style => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 85,
              ),
              const Center(
                child: Text(
                  "NEBULA",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 370,
                      height: 300,
                      margin: const EdgeInsets.only(
                        left: 9,
                        right: 9,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0, 0),
                            blurRadius: 12,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 35,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: const TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                            ),
                          ),

                          ///
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 20,
                              right: 20,
                            ),
                            child: const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 20,
                              right: 20,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Order()));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16.0),
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Center(
                                  child: const Text(
                                    'login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                            left: 50,
                            right: 10,
                          ),
                          child: Text(
                            "Don’t  have  an account?",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        TextButton(
                          onPressed: () async {
                            FirebaseFirestore.instance
                                .collection("test")
                                .add({"cop": "ss"});
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 5,
                              right: 10,
                            ),
                            child: Text(
                              "Create  account!",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
