import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/widgets/header_widget.dart';

class ButtonsScreens extends StatelessWidget {
  const ButtonsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderWidget(value: "Elevated Button"),
        Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black87,
              padding: const EdgeInsets.all(20.0),
              backgroundColor: Colors.yellow,
              shadowColor: Colors.yellow,
              side: const BorderSide(
                color: Colors.black87,
                width: 2.0,
              ),
              shape: const StadiumBorder(),
              fixedSize: const Size(
                300.0,
                80.0,
              ),
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: const Icon(Icons.add_shopping_cart_outlined),
            label: const Text(
              "Let's begin",
            ),
          ),
        ),
        const HeaderWidget(value: "Text Button"),
        TextButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black87,
            padding: const EdgeInsets.all(20.0),
            shadowColor: Colors.yellow,
            shape: const StadiumBorder(),
            fixedSize: const Size(
              300.0,
              80.0,
            ),
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add_shopping_cart_outlined),
              Text(
                "Enabled",
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black87,
            padding: const EdgeInsets.all(20.0),
            shadowColor: Colors.yellow,
            shape: const StadiumBorder(),
            fixedSize: const Size(
              300.0,
              80.0,
            ),
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add_shopping_cart_outlined),
              Text(
                "Disabled",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
