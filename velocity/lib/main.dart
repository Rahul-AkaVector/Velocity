import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:velocity/constants/theme.dart';
import 'package:velocity/firebase/firebase_options/firebase_options.dart';
// import 'package:velocity/views/screens/home/home.dart';
import 'package:velocity/views/screens/navigation_menu/navigation_menu.dart';

void main() async {
  await dotenv.load();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaulFirebaseConfig.platformOptions,
  );

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

//language : python , html , css , javascript
//important tags : language , uiux, frontend, backend, course_all