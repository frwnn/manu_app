import 'package:flutter/material.dart';

class Product_spesial {
  final String image, title, ingre;
  final int price;

  Product_spesial({
    this.image,
    this.title,
    this.price,
    this.ingre,
  });
}

List<Product_spesial> demo_products = [
  Product_spesial(
      image: "images/biji.JPG",
      title: "Manu Signature",
      price: 98000,
      ingre: "Engrekang & Mandailing\nArabica"),
  Product_spesial(
      image: "images/vss.JPGG",
      title: "V60",
      price: 26000,
      ingre: "Dengan Sirup Pandan"),
  Product_spesial(
      image: "images/leci.png",
      title: "Lychee Tea",
      price: 25000,
      ingre: "Manual Brew"),
];
