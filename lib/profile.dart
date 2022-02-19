// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unnecessary_new

import 'package:flutter/material.dart';

import 'OrderAll.dart';
import 'ordercart.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() => runApp(
      MaterialApp(
        home: profile(),
        debugShowCheckedModeBanner: false,
      ),
    );

// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp();

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  get walletController => null;

  get userController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "NEBULA",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ordername()));
            },
          )
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              accountName: new Text(
                'Tosakan saran',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              accountEmail: new Text(
                'copterza@hotmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://mthai.com/app/uploads/2021/02/filmphoto-app3.jpg'),
              ),
            ),
            new ListTile(
              title: new Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new profile()));
              },
            ),
            new ListTile(
              title: new Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Order()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: 400,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(25),
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
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Text(
                "TOSAKAN",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 30,
                right: 30,
                bottom: 10,
              ),
              child: TextField(
                controller: userController,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email: copterza@hotmail.com",
                  hintText: 'Email:',
                ),
              ),
            ),

            ///
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
                bottom: 10,
              ),
              child: TextField(
                controller: walletController,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: r'Balance:   $100',
                  hintText: 'Balance:',
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => MyApp1()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(12.0),
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
