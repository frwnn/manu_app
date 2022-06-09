import 'package:flutter/material.dart';

class Product {
  final String image, title, ingre, desc;
  final int price;

  Product({
    this.image,
    this.title,
    this.price,
    this.ingre,
    this.desc,
  });
}

List<Product> demo_product = [
  Product(
    image: "images/eskopi.JPG",
    title: "Es Kopi Manu",
    price: 21000,
    ingre: "Dengan Susu & Gula Aren",
  ),
  Product(
      image: "images/espandan.JPG",
      title: "Es Kopi Pandan",
      price: 21000,
      ingre: "Dengan Sirup Pandan"),
  Product(
      image: "images/mspice.JPG",
      title: "Manu Spice",
      price: 28000,
      ingre: "Dengan Rempah"),
  Product(
      image: "images/chino.JPG",
      title: "Baby Chino",
      price: 20000,
      ingre: "Dengan Susu Segar"),
];
