import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:not_first_flutter_app/widgets/header_widget.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderWidget(value: "Material Icons"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.alt_route_rounded,
              size: 100,
              color: Colors.lightGreenAccent,
            ),
            Icon(
              Icons.flight_class_rounded,
              size: 50,
              color: Colors.blue.shade600,
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.local_activity,
                size: 60,
                color: Colors.red.shade600,
              ),
            )
          ],
        ),
        const HeaderWidget(value: "Fontawesome Icons"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              FontAwesomeIcons.addressBook,
              size: 30,
              color: Colors.greenAccent,
            ),
            Icon(
              FontAwesomeIcons.locationArrow,
              size: 60,
              color: Colors.orange.shade600,
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: Icon(
                FontAwesomeIcons.airbnb,
                color: Colors.green.shade600,
                size: 40,
              ),
            )
          ],
        ),
      ],
    );
  }
}
