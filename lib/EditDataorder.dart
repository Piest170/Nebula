// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, duplicate_ignore, unnecessary_new, deprecated_member_use, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:nebula/actions/product.dart';
import 'package:nebula/profile.dart';
import 'OrderAll.dart';
import 'models/product.dart';
import 'ordercart.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: dataorder(),
//     ));

class dataorder extends StatefulWidget {
  final Product product;
  const dataorder({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _dataorderState createState() => _dataorderState();
}

class _dataorderState extends State<dataorder> {
  // List<Product> products = [];
  bool loading = true;
  late Product kuyCop;
  fetchProducts() async {
    // print(widget.product.id);
    final _kuyCop = await ProductService().findOne(widget.product.id);

    setState(() {
      //   products = _products;
      kuyCop = _kuyCop;
      loading = false;
      print(kuyCop.id);
    });
  }

  @override
  void initState() {
    fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "NEBULA",
          // ignore: prefer_const_constructors
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
        child: loading
            ? Text("Kuy")
            : Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 0,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            top: 10,
                          ),
                          width: 350,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  kuyCop.image,
                                  height: 350,
                                  width: 350,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      // Text(
                      //   "Jordan",
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontSize: 30,
                      //     fontFamily: 'Roboto',
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, right: 20, left: 20),
                        child: Text(
                          kuyCop.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, right: 20, left: 20),
                        child: Text(
                          kuyCop.detail,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, right: 20, left: 20),
                        child: Text(
                          r"$" + kuyCop.price.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 3, right: 20, left: 20),
                        child: DropdownSearch<String>(
                          items: [
                            "Size 5",
                            "Size 6",
                            "Size 7",
                            "Size 8",
                            "Size 9",
                            "Size 10",
                            "Size S",
                            "Size M",
                            "Size L",
                            "Size XL",
                          ],
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Selected Size  ",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 3, right: 20, left: 20),
                        child: DropdownSearch<String>(
                          items: [
                            "Quantity   1",
                            "Quantity   2",
                            "Quantity   3",
                            "Quantity   4",
                            "Quantity   5",
                            "Quantity   6",
                            "Quantity   7",
                            "Quantity   8",
                            "Quantity   9",
                            "Quantity   10",
                          ],
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Quantity",
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 20,
                          right: 20,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            print("TAP");
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: const Text(
                                'Add To Bag',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}

// TextField(
//   decoration: const InputDecoration(
//     border: OutlineInputBorder(),
//     hintText: 'Enter a search term'
//   ),
// );
