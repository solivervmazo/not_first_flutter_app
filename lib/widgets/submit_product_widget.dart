import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/widgets/detail_widget.dart';

class SubmitProductWidget extends StatelessWidget {
  const SubmitProductWidget({
    super.key,
    required this.onPress,
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(
          200,
          50,
        ),
        foregroundColor: Colors.deepPurple.shade300,
      ),
      child: Text(
        "submit form".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
