// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nebula/profile.dart';
import 'package:nebula/EditDataorder.dart';

import 'OrderAll.dart';
import 'models/product.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: ordername(),
    debugShowCheckedModeBanner: false,
  ));
}

class ordername extends StatefulWidget {
  const ordername({Key? key}) : super(key: key);

  @override
  _ordernameState createState() => _ordernameState();
}

class _ordernameState extends State<ordername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            for (var i = 0; i < 10; i++)
              Container(
                height: 300,
                color: Colors.white, //bg//
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 250,
                      child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "https://static.nike.com/a/images/t_prod_ss/w_960,c_limit,f_auto/acc979db-e99d-488e-8791-7dcfcd7e2f37/%E0%B8%A7%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%9B%E0%B8%B4%E0%B8%94%E0%B8%95%E0%B8%B1%E0%B8%A7-air-jordan-1-ko-%E2%80%9Cchicago%E2%80%9D.jpg",
                                height: 160,
                                width: 160,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Jordan1",
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // children: [
                                //   IconButton(
                                //       // ignore: prefer_const_constructors
                                //       icon: Icon(
                                //         Icons.add_shopping_cart,
                                //         color: Colors.black,
                                //         size: 23,
                                //       ),
                                //       onPressed: () {}),
                                // ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jordan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                              width: 120,
                              child: Center(
                                child: Text(
                                  "Jordan 1 Satin Shattered Backboard sneakers",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                          Text(
                            "Size",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text("XL"),
                          Text(
                            "quantity",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text("1"),
                          Text(
                            r"Total   $20.00",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // print("gg");
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => MyApp1()));
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    // Container(
                                    //   margin: const EdgeInsets.only(
                                    //     right: 2,
                                    //     left: 2,
                                    //   ),
                                    //   padding: const EdgeInsets.all(12.0),
                                    //   width: 85,
                                    //   decoration: BoxDecoration(
                                    //     color: Colors.green,
                                    //     borderRadius:
                                    //         BorderRadius.circular(8.0),
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => dataorder(
                                                    product: Product(
                                                        id: "1",
                                                        name: "name",
                                                        size: [
                                                          "S",
                                                          "M",
                                                          "L",
                                                          "XL"
                                                        ],
                                                        image: "test",
                                                        detail: "Jordan origin",
                                                        quantity: 1,
                                                        price: 20.00))));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          right: 2,
                                          left: 2,
                                        ),
                                        padding: EdgeInsets.all(12.0),
                                        width: 85,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Edit",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // print("gg");
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => MyApp1()));
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        right: 2,
                                        left: 2,
                                      ),
                                      padding: const EdgeInsets.all(12.0),
                                      width: 85,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Center(
                                        child: const Text(
                                          'Delete',
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
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         GestureDetector(
                    //           onTap: () {
                    //             // print("gg");
                    //             // Navigator.push(
                    //             //     context,
                    //             //     MaterialPageRoute(
                    //             //         builder: (context) => MyApp1()));
                    //           },
                    //           child: Row(
                    //             crossAxisAlignment: CrossAxisAlignment.end,
                    //             mainAxisAlignment: MainAxisAlignment.end,
                    //             children: [
                    //               Container(
                    //                 margin: const EdgeInsets.only(
                    //                   right: 2,
                    //                   left: 2,
                    //                 ),
                    //                 padding: const EdgeInsets.all(12.0),
                    //                 width: 85,
                    //                 decoration: BoxDecoration(
                    //                   color: Colors.green,
                    //                   borderRadius: BorderRadius.circular(8.0),
                    //                 ),
                    //                 child: Center(
                    //                   child: const Text(
                    //                     'Edit',
                    //                     style: TextStyle(
                    //                       color: Colors.white,
                    //                       fontSize: 15,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         GestureDetector(
                    //           onTap: () {
                    //             // Navigator.push(
                    //             //     context,
                    //             //     MaterialPageRoute(
                    //             //         builder: (context) => MyApp1()));
                    //           },
                    //           child: Row(
                    //             crossAxisAlignment: CrossAxisAlignment.end,
                    //             mainAxisAlignment: MainAxisAlignment.end,
                    //             children: [
                    //               Container(
                    //                 margin: const EdgeInsets.only(
                    //                   right: 2,
                    //                   left: 2,
                    //                 ),
                    //                 padding: const EdgeInsets.all(12.0),
                    //                 width: 85,
                    //                 decoration: BoxDecoration(
                    //                   color: Colors.red,
                    //                   borderRadius: BorderRadius.circular(8.0),
                    //                 ),
                    //                 child: Center(
                    //                   child: const Text(
                    //                     'Delete',
                    //                     style: TextStyle(
                    //                       color: Colors.white,
                    //                       fontSize: 15,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
