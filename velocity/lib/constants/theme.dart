import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    navigationBarTheme: NavigationBarThemeData(
  backgroundColor: Color(0xff2b2d42),
  height: 60,
  elevation: 0,
  indicatorColor: Colors.white.withOpacity(0.1),
  labelTextStyle: MaterialStatePropertyAll(
    TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),
  labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
));
