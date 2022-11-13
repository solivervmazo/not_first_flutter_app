import 'package:flutter/material.dart';

import '../widgets/header_widget.dart';

class ContainersScreen extends StatelessWidget {
  const ContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderWidget(value: "Containers"),
        Container(
          width: 350.0,
          height: 250.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 8,
          ),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(
              20,
            ),
            border: Border.all(
              color: Colors.blueGrey.shade600,
              width: 3.0,
            ),
          ),
          child: const Text(
            "Boring",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const HeaderWidget(value: "Containers with image"),
        Container(
          width: 350.0,
          height: 250.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 8,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            border: Border.all(
              color: Colors.blueGrey.shade600,
              width: 3.0,
            ),
            shape: BoxShape.circle,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/three.png"),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(4.0, 4.0),
              ),
            ],
          ),
          child: const Text(
            "Less boring",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
