import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String? imageAsset;
  final String? title;
  final VoidCallback? function;

  CategoryCard({this.imageAsset, this.title, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Expanded(
        child: Container(
          height: 50,
          width: 30,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEDEF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageAsset!),
              const SizedBox(height: 8),
              Text(title ?? 'Category'),
            ],
          ),
        ),
      ),
    );
  }
}
