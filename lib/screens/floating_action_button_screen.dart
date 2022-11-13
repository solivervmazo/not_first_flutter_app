import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> lists = [
      {
        "leading": const Icon(
          Icons.home,
          color: Colors.white,
        ),
        "title": "Home",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        "title": "Shop",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": null,
        "title": "Shop",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": const Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        "title": "Favorites",
        "subtitle": "",
        "trailing": 0.0,
      },
      {
        "leading": const Icon(
          Icons.settings,
          color: Colors.white,
        ),
        "title": "Settings",
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

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Container(
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
          appBar: AppBar(
            title: const Text("Title"),
            backgroundColor: Colors.black87,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black87,
            foregroundColor: Colors.yellow,

            // mini: true,
            // elevation: 0,
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 5.0,
            shape: CircularNotchedRectangle(),
            color: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                ...lists
                    .map<Widget>((list) => Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ...(list["leading"] == null
                                  ? []
                                  : [
                                      list["leading"] as Widget,
                                      Text(
                                        list["title"],
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                            ],
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
