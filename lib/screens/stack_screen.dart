import 'package:flutter/material.dart';

import '../widgets/header_widget.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 330,
            height: 450,
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white60,
                offset: Offset(0, 2),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: AssetImage("assets/images/dark.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Positioned(
                top: 0.0,
                left: 0.0,
                child: Text(
                  "Editor's choice",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                top: 20.0,
                left: 0.0,
                child: Text(
                  "The art of making success",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 20.0,
                child: Text(
                  "Learn from our speakers",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Text(
                  "Be successfull",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
