import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurStyle: BlurStyle.outer,
            spreadRadius: 4.0,
          )
        ],
      ),
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          centerTitle: true,
          title: const Text("Home"),
          backgroundColor: Colors.purple,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0),
            ),
          ),
          flexibleSpace: const Image(
            image: AssetImage("assets/images/sit.jpg"),
            fit: BoxFit.cover,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
