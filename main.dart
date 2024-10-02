import 'package:flutter/material.dart';
import 'package:km_miles_converter/input_lines_cont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            title: const Text('Конвектор')),
        backgroundColor: Colors.black,
        body: const FunctionalOfApp(),
      ),
    );
  }
}
