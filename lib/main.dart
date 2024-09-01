import 'package:flutter/material.dart';
import 'package:learn/home_screen.dart';
import 'package:learn/productView.dart';
import 'package:learn/scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey)),
      home: const ProductView(),
    );
  }
}
