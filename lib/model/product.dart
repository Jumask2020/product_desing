import 'package:flutter/material.dart';

class Product {
  late String name, urlImage, description, oldPrice, newPrice;
  List<Color>? color = [];

  Product(
      {required this.name,
      required this.urlImage,
      required this.description,
      required this.oldPrice,
      required this.newPrice,
      this.color});
}
