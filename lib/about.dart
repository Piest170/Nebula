// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

// ignore: camel_case_types
class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  AboutPageState createState() => AboutPageState();
}

class AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Profile'),
      ),
    );
  }
}
