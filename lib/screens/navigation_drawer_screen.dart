import 'package:flutter/material.dart';

import '../widgets/header_widget.dart';

class NavigationDrawerScreen extends StatelessWidget {
  const NavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> lists = [
      {
        "leading": const Icon(
          Icons.home,
        ),
        "title": "Home",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": const Icon(
          Icons.shopping_cart,
        ),
        "title": "Shop",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": const Icon(
          Icons.favorite,
        ),
        "title": "Favorites",
        "subtitle": "",
        "trailing": 0.0,
      },
    ];

    final List<Map<String, dynamic>> labels = [
      {
        "leading": const Icon(
          Icons.label,
        ),
        "title": "Red",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": const Icon(
          Icons.label,
        ),
        "title": "Green",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": const Icon(
          Icons.label,
        ),
        "title": "Blue",
        "subtitle": "",
        "trailing": 0.0,
      },
    ];

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
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountEmail: Text("solivervmazo..jobs@gmail.com"),
                accountName: Text(
                  "Soliver V. Mazo",
                ),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage(
                    "assets/images/one.png",
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    foregroundImage: AssetImage(
                      "assets/images/two.png",
                    ),
                  ),
                ],
              ),
              ...lists.map<Widget>(
                (list) {
                  return ListTile(
                    onTap: () {},
                    leading: list["leading"] as Widget,
                    title: Text(
                      list["title"].toString(),
                    ),
                  );
                },
              ).toList(),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: Text(
                  "Labels",
                ),
              ),
              ...labels.map<Widget>(
                (list) {
                  return ListTile(
                    onTap: () {},
                    leading: list["leading"] as Widget,
                    title: Text(
                      list["title"].toString(),
                    ),
                  );
                },
              ).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
