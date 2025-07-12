// lib/pages/home.dart
import 'package:flutter/material.dart';

import '../widgets/header.dart'; // Import the Header widget

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(), // Use Header as the fixed top bar
      body: ListView(
        children: const [
          // Add some content to demonstrate scrolling
          SizedBox(height: 20),
          Center(child: Text('Welcome to the Home Page!')),
          SizedBox(height: 20),
          // Sample content to make the page scrollable
          Text('Item 1', textAlign: TextAlign.center),
          Text('Item 2', textAlign: TextAlign.center),
          Text('Item 3', textAlign: TextAlign.center),
          Text('Item 4', textAlign: TextAlign.center),
          Text('Item 5', textAlign: TextAlign.center),
          // Add more items to test scrolling
          SizedBox(height: 600), // Extra space to ensure scrolling
        ],
      ),
    );
  }
}