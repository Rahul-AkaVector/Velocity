import 'package:flutter/material.dart';
// import 'package:velocity/views/screens/home/home.dart';
import 'package:velocity/views/screens/navigation_menu/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Velocity',
      home: Navigation(),
    );
  }
}
