import 'package:flutter/material.dart';

class Category {
  final String image, title;
  final VoidCallback? function;

  Category({
    this.function,
    required this.image,
    required this.title,
  });
}

final List<Category> categoryData = [
  Category(
    function: () {},
    image: "assets/icons/dashboard.png",
    title: "All",
  ),
  Category(
    image: "assets/icons/shirt.png",
    title: "T-Shirt",
  ),
  Category(
    image: "assets/icons/cap.png",
    title: "Cap",
  ),
  Category(
    image: "assets/icons/sneakers.png",
    title: "Shoes",
  ),
  Category(
    image: "assets/icons/smartphone.png",
    title: "Mobile",
  ),
  Category(
    image: "assets/icons/smart_tv.png",
    title: "TV's",
  ),
  Category(
    image: "assets/icons/washing_machine.png",
    title: "Washing Machine",
  )
];
