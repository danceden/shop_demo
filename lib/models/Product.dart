import 'package:flutter/cupertino.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';

class Product{
  final String id;
  final String title;
  final num price;
  final String description;
  final String imageUrl;
  final color;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.color,
  });
}

class ProductDataProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p3',
      title: 'мыло',
      description: 'для мытья',
      price: 15.00,
      imageUrl: '',
      color: '',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product getElementById(String id)
  => _items.singleWhere((value) => value.id == id);
}