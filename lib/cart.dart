// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

import 'about.dart';

void main() => runApp(
      MaterialApp(
        home: Cart(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "NEBULA",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('Tosakan saran'),
                accountEmail: new Text('copterza@hotmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://www.sanook.com/campus/1396205/gallery/570513/'),
                ),
              ),
              new ListTile(
                title: new Text('About Page'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new AboutPage()));
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
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
                child: Text(
                  "SHOPPING BAG",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 45,
                endIndent: 45,
                color: Colors.grey,
              ),
              Column(children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, right: 20, left: 20),
                      child: Text(
                        "Jordan 1",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ])
            ])));
  }
}
