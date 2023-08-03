import 'package:e_commerce_app/model/categoryCard.dart';
import 'package:e_commerce_app/widgets/CategoryCard.dart';
import 'package:flutter/material.dart';

class CategoryWidgets extends StatelessWidget {
  const CategoryWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: categoryData.map((category) {
            return CategoryCard(category: category);
          }).toList(),
        ),
      ),
    );
  }
}
