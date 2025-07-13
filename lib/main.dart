import 'package:flutter/material.dart';
import 'package:mobiletoi/pages/home.dart';
import 'package:mobiletoi/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Toi',
      theme: AppSettings.themeData,
      home: const Home(),
    );
  }
}