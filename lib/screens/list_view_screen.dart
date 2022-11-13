import 'package:flutter/material.dart';

import '../widgets/header_widget.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _lists = [
      {
        "leading": const Icon(
          Icons.inventory,
        ),
        "title": "Products",
        "subtitle": "Total products",
        "trailing": 3500.0,
      },
      {
        "leading": const Icon(
          Icons.production_quantity_limits,
        ),
        "title": "Returns",
        "subtitle": "Damaged/returned products",
        "trailing": 234.0,
      },
      {
        "leading": const Icon(
          Icons.money,
        ),
        "title": "Cash on hand",
        "subtitle": "Total register cash",
        "trailing": 11234.0,
      },
      {
        "leading": const Icon(
          Icons.balance,
        ),
        "title": "Deposits",
        "subtitle": "Customer/bank depostis",
        "trailing": 9234.0,
      },
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderWidget(value: "Static list view"),
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            child: ListView(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.alarm_off_sharp,
                  ),
                  title: const Text("Sales"),
                  subtitle: const Text("Sales of the week"),
                  trailing: const Text("3500"),
                  tileColor: Colors.brown.shade50,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.supervised_user_circle,
                  ),
                  title: const Text("Customers"),
                  subtitle: const Text("Total customers visited"),
                  trailing: const Text("1500"),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.production_quantity_limits,
                  ),
                  title: const Text("Returns"),
                  subtitle: const Text("Total returned items"),
                  trailing: const Text("97"),
                ),
              ],
            ),
          ),
          const HeaderWidget(value: "Dynamic list view"),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.builder(
              itemCount: _lists.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () {},
                leading: _lists[index]["leading"] as Widget,
                title: Text(_lists[index]["title"].toString()),
                subtitle: Text(_lists[index]["subtitle"].toString()),
                trailing: Text(_lists[index]["trailing"].toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
