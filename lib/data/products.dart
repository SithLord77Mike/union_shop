class Product {
  final String id;
  final String title;
  final String image;
  final double price;
  final double? salePrice;
  final String collection;
  final String category;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    this.salePrice,
    required this.collection,
    required this.category,
  });
}

// ------------------- HARD CODED PRODUCTS -------------------

final List<Product> allProducts = [
  Product(
    id: "p1",
    title: "Portsmouth Hoodie",
    image: "assets/images/hoodie.png",
    price: 35.00,
    collection: "portsmouth-merch",
    category: "Clothing",
  ),
  Product(
    id: "p2",
    title: "Portsmouth Mug",
    image: "assets/images/mug.png",
    price: 10.00,
    collection: "gifts",
    category: "Souvenirs",
  ),
  Product(
    id: "p3",
    title: "Graduation Frame",
    image: "assets/images/frame.png",
    price: 20.00,
    salePrice: 15.00,
    collection: "sale",
    category: "Accessories",
  ),
  Product(
    id: "p4",
    title: "Portsmouth T-Shirt",
    image: "assets/images/tshirt.png",
    price: 18.00,
    collection: "portsmouth-merch",
    category: "Clothing",
  ),
];
