import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/main.dart';
import 'package:not_first_flutter_app/screens/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentScreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => changeIndex(0),
          icon: const Icon(
            Icons.home_filled,
          ),
        ),
        title: Text(
          screens[_currentScreenIndex]['title'].toString().toUpperCase(),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all([
          "stack",
        ].contains(screens[_currentScreenIndex]['name'].toString())
            ? 0.0
            : 25.0),
        child: screens[_currentScreenIndex]['name'].toString() == 'welcome'
            ? WelcomeScreen(
                currentScreenIndex: _currentScreenIndex,
                callback: (index) {
                  changeIndex(index);
                },
              )
            : screens[_currentScreenIndex]['screen'] as Widget,
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      _currentScreenIndex = index;
    });
  }
}
