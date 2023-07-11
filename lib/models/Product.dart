// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/services.dart';

class Product {
  List<Shoes>? shoes;

  Product({this.shoes});

  Product.fromJson(Map<String, dynamic> json) {
    if (json['shoes'] != null) {
      shoes = <Shoes>[];
      json['shoes'].forEach((v) {
        shoes!.add(new Shoes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.shoes != null) {
      data['shoes'] = this.shoes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Shoes {
  int? id;
  String? image;
  String? name;
  String? description;
  double? price;
  String? color;
  int count = 1;

  Shoes(
      {this.id,
      this.image,
      this.name,
      required this.count,
      this.description,
      this.price,
      this.color});

  Shoes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    color = json['color'];
    count = 1;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['color'] = this.color;
    return data;
  }
}
Future<Product> readJson() async {
  final String file = await rootBundle.loadString('assets/shoes.json');
  final data = await json.decode(file);
  var product = Product.fromJson(data);
  return product;
}

Future<Product> product = readJson();