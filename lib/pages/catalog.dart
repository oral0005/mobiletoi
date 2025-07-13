//lib/pages/catalog.dart
import 'package:flutter/material.dart';
import 'package:mobiletoi/widgets/header.dart';
import 'package:mobiletoi/widgets/bottomnav.dart';
import 'package:mobiletoi/widgets/developing.dart';


class catalog extends StatelessWidget {
  const catalog({super.key});

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

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: buildDev(context, "catalog"),
      );
  }
}