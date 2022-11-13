import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/widgets/header_widget.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderWidget(value: "Image from assets"),
        Image(
          image: AssetImage("assets/images/one.png"),
        ),
        HeaderWidget(value: "Image from network"),
        Image(
          image: NetworkImage(
            "https://cdn.theatlantic.com/media/img/photo/2018/10/images-of-the-season-fall-is-in-the/f02_RTX6EJJJ-1/original.jpg",
          ),
        ),
      ],
    );
  }
}
