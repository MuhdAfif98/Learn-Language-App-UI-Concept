import 'package:flutter/material.dart';
import 'package:learn_language_app/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Language Concept UI',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}


