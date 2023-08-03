import 'package:e_commerce_app/widgets/HomeAppBar.dart';
import 'package:e_commerce_app/widgets/ItemsWidget.dart';
import 'package:e_commerce_app/widgets/Products.dart';
import 'package:e_commerce_app/widgets/buildCardCategory.dart';
import 'package:e_commerce_app/widgets/contentSlider.dart';
import 'package:flutter/material.dart';

import '../widgets/CategoryWidgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(children: [
            Icon(Icons.sort, size: 27, color: Color(0xFF293265)),
            Spacer(),
            Text(
              'India Market',
              style: TextStyle(color: Color(0xFF293265)),
            ),
            Spacer(),
            Image(
              image: AssetImage("assets/icons/user.png"),
              height: 25,
              width: 25,
              color: Color(0xFF293265),
            ),
            SizedBox(
              width: 5,
            ),
            Badge(
              label: Text('1'),
              child: Image(
                image: AssetImage("assets/icons/cart.png"),
                height: 25,
                width: 25,
                color: Color(0xFF293265),
              ),
            )
          ]),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFEEEDFF),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                    style: const TextStyle(color: Color(0xFF5C6098)),
                    decoration: InputDecoration(
                        hintText: 'Search Here.....',
                        hintStyle: const TextStyle(color: Color(0xFF5C6098)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xFF5c6098))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xFF5c6098)))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const contentSlider(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Category',
                    style: TextStyle(
                        color: Color(0xFF5C6098),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFF5C6098),
                      borderRadius: BorderRadius.circular(20)),
                  child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [CategoryWidgets()])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Best Selling',
                    style: TextStyle(
                        color: Color(0xFF5C6098),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF5C6098),
                        borderRadius: BorderRadius.circular(20)),
                    child: const ItemsWidget()),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Sponsored',
                    style: TextStyle(
                        color: Color(0xFF5C6098),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
