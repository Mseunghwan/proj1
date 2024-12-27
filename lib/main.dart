// lib/main.dart
import 'package:flutter/material.dart';
import 'package:proj1/navigation/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF3B5998),
      ),
      home: const MainScreen(),
    );
  }
}