// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nebula/models/product.dart';

class ProductService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  create(Product product) async {
    final res = await _firestore.collection("products").add({
      "id": product.id,
      "name": product.name,
      "size": product.size,
      "detail": product.detail,
      "quantity": product.quantity,
      "price": product.price,
    });

    return res;
  }

  Future<List<Product>> findAll() async {
    final res = await _firestore.collection("products").get();
    final List<Product> products = [];
    res.docs.forEach((doc) {
      products.add(Product(
        id: doc["id"],
        name: doc["name"],
        size: doc["size"],
        detail: doc["detail"],
        quantity: 1,
        image: doc["image"],
        price: double.parse(doc["price"].toString()),
      ));
    });

    return products;
  }

  findOne(id) async {
    final res = await _firestore.collection("products").doc(id).get();
    final data = res.data();
    final product = Product(
      id: data?["id"],
      detail: data?["detail"],
      image: data?["image"],
      name: data?["name"],
      price: double.parse(data!["price"].toString()),
      quantity: data["quantity"],
      size: data["size"],
    );

    return product;
    // print(res.data());
    // late <Product> products = [];
    // res.docs.forEach((doc) {
    //   products.add(Product(
    //     id: doc["id"],
    //     name: doc["name"],
    //     size: doc["size"],
    //     detail: doc["detail"],
    //     qauntity: doc["qauntity"],
    //     image: doc["image"],
    //     price: double.parse(doc["price"].toString()),
    //   ));
    // });

    // return products;
  }
}
