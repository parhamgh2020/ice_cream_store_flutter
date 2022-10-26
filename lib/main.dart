import 'package:flutter/material.dart';
import './pages/home_pages.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ice cream shop',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1),
      ),
      home: HomePage(),
    );
  }
}
