import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/screens/dashboard_screen.dart';

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
      home: DashboardScreen(
        title: 'Dashboard'.toUpperCase(),
      ),
    );
  }
}
