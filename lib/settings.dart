import 'package:flutter/material.dart';

class AppSettings {
  // Theme configuration
  static ThemeData get themeData => ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white, // Set background to white
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color(0xFFFFA500),
          unselectedItemColor: Colors.black54,
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 57,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 45,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Inter',
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  // Reusable button style
  static ButtonStyle get elevatedButtonStyle => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFA500),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
      );

  // Common colors
  static const Color primaryColor = Color(0xFFFFA500);
  static const Color lightBeige = Color(0xFFF6E9D1);
  static const Color darkBrown = Color(0xFF6B4E31);
  static const Color footerBrown = Color(0xFF89650B);
}