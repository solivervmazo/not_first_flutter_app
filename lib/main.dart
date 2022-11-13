import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/screens/app_bar_screen.dart';
import 'package:not_first_flutter_app/screens/buttons_screen.dart';
import 'package:not_first_flutter_app/screens/containers_screen.dart';
import 'package:not_first_flutter_app/screens/floating_action_button_screen.dart';
import 'package:not_first_flutter_app/screens/home_screen.dart';
import 'package:not_first_flutter_app/screens/icons_screen.dart';
import 'package:not_first_flutter_app/screens/image_screen.dart';
import 'package:not_first_flutter_app/screens/list_view_screen.dart';
import 'package:not_first_flutter_app/screens/navigation_drawer_screen.dart';
import 'package:not_first_flutter_app/screens/stack_screen.dart';
import 'package:not_first_flutter_app/screens/welcome_screen.dart';

List<Map<String, dynamic>> screens = [
  {
    'name': 'welcome',
    'title': 'welcome',
    'screen': WelcomeScreen,
  },
  {
    'name': 'image',
    'title': 'image',
    'screen': const ImageScreen(),
  },
  {
    'name': 'icons',
    'title': 'icons',
    'screen': const IconsScreen(),
  },
  {
    'name': 'containers',
    'title': 'containers',
    'screen': const ContainersScreen(),
  },
  {
    'name': 'buttons',
    'title': 'buttons',
    'screen': const ButtonsScreens(),
  },
  {
    'name': 'app_bar',
    'title': 'app bar',
    'screen': const AppBarScreen(),
  },
  {
    'name': 'list_view',
    'title': 'list view',
    'screen': const ListViewScreen(),
  },
  {
    'name': 'navigation_drawer',
    'title': 'navigation drawer',
    'screen': const NavigationDrawerScreen(),
  },
  {
    'name': 'floating_action_button',
    'title': 'floating action button',
    'screen': const FloatingActionButtonScreen(),
  },
  {
    'name': 'stack',
    'title': 'stack',
    'screen': const StackScreen(),
  },
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(
        title: 'welcome',
      ),
    );
  }
}
