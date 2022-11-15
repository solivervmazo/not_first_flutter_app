import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icons,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter some text";
        } else {
          return null;
        }
      },
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.deepPurple.shade300,
        ),
        prefixIcon: Icon(
          icons,
          color: Colors.deepPurple.shade300,
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
