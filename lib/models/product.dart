class Product {
  late String id;
  late String name;
  late List<dynamic> size;
  late String detail;
  late String image;
  late int quantity;
  late double price;

  Product({
    required this.id,
    required this.name,
    required this.size,
    required this.detail,
    required this.quantity,
    required this.price,
    required this.image,
  });
}
