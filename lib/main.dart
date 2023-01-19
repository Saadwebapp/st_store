import 'package:flutter/material.dart';
import 'package:st_store/screens/WelcomeToSTStore.dart';
import 'package:st_store/screens/home.dart';
import 'package:st_store/screens/login.dart';
import 'package:st_store/screens/product_details.dart';
import 'package:st_store/screens/speakers.dart';
import 'package:st_store/widgets/home_screen.dart';

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
      home: Home(),
    );
  }
}
