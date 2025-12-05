import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String image;
  final double price;
  final double? salePrice;
  final String
      collection; // e.g. 'portsmouth-merch', 'souvenirs', 'print-shack', 'sale'
  final String category;

  const Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    this.salePrice,
    required this.collection,
    required this.category,
  });
}

final List<Product> allProducts = [
  Product(
    id: 'p1',
    title: 'Portsmouth Hoodie',
    image: 'assets/images/hoodie.png',
    price: 30.00,
    collection: 'portsmouth-merch',
    category: 'Clothing',
  ),
  Product(
    id: 'p2',
    title: 'Portsmouth Tote Bag',
    image: 'assets/images/tote.png',
    price: 12.00,
    collection: 'portsmouth-merch',
    category: 'Accessories',
  ),
  Product(
    id: 'p3',
    title: 'Union Water Bottle',
    image: 'assets/images/bottle.png',
    price: 10.00,
    collection: 'souvenirs',
    category: 'Souvenirs',
  ),
  Product(
    id: 'p4',
    title: 'Graduation Frame',
    image: 'assets/images/frame.png',
    price: 20.00,
    salePrice: 15.00,
    collection: 'souvenirs',
    category: 'Accessories',
  ),
  Product(
    id: 'p5',
    title: 'Print Shack Custom T-Shirt',
    image: 'assets/images/print_shack_tshirt.png',
    price: 25.00,
    collection: 'print-shack',
    category: 'Clothing',
  ),
  Product(
    id: 'p6',
    title: 'Sale Hoodie',
    image: 'assets/images/sale_hoodie.png',
    price: 35.00,
    salePrice: 28.00,
    collection: 'sale',
    category: 'Sale',
  ),
];
