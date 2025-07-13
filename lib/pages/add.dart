//lib/pages/add.dart
import 'package:flutter/material.dart';
import 'package:mobiletoi/widgets/header.dart';
import 'package:mobiletoi/widgets/bottomnav.dart';
import 'package:mobiletoi/widgets/developing.dart';

class add extends StatelessWidget {
  const add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      endDrawer: const Sidebar(),
      backgroundColor: Colors.white,
      body: const BottomNav(),
    );
  }
}
class Add extends StatelessWidget {
  const Add({super.key});

  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: buildDev(context, "add"),
      );
  }
}