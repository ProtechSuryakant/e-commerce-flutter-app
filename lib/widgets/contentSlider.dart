import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/model/homeSlider.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class contentSlider extends StatefulWidget {
  const contentSlider({super.key});

  @override
  State<contentSlider> createState() => _contentSliderState();
}

// ignore: camel_case_types
class _contentSliderState extends State<contentSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: onSliderData.map((index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              index.image,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          )),
        );
      }).toList(),
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 1000),
        onPageChanged: (index, reason) => setState(() => activeIndex = index),
      ),
    );
  }
}
