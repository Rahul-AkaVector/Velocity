import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:velocity/constants/theme.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Velocity',
      theme: themeData,
      home: Navigation(),
    );
  }
}
