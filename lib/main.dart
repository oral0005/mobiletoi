import 'package:flutter/material.dart';
import 'package:mobiletoi/pages/home.dart'; // Import the Home widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Toi',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 57,
            fontWeight: FontWeight.w400, // Inter_18pt-Regular.ttf
          ),
          displayMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 45,
            fontWeight: FontWeight.w400, // Inter_18pt-Regular.ttf
          ),
          displaySmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 36,
            fontWeight: FontWeight.w400, // Inter_18pt-Regular.ttf
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 32,
            fontWeight: FontWeight.w700, // Inter_18pt-Bold.ttf
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 28,
            fontWeight: FontWeight.w700, // Inter_18pt-Bold.ttf
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 24,
            fontWeight: FontWeight.w700, // Inter_18pt-Bold.ttf
          ),
          titleLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 22,
            fontWeight: FontWeight.w600, // Inter_18pt-SemiBold.ttf
          ),
          titleMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w600, // Inter_18pt-SemiBold.ttf
          ),
          titleSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w600, // Inter_18pt-SemiBold.ttf
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w400, // Inter_18pt-Regular.ttf
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w400, // Inter_18pt-Regular.ttf
          ),
          bodySmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w400, // Inter_18pt-Regular.ttf
          ),
          labelLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w500, // Inter_18pt-Medium.ttf
          ),
          labelMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w500, // Inter_18pt-Medium.ttf
          ),
          labelSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 11,
            fontWeight: FontWeight.w500, // Inter_18pt-Medium.ttf
          ),
        ),
      ),
      home: const Home(), // Changed to Home page as the initial screen
    );
  }
}

// Removed MyHomePage class since it's no longer the initial screen