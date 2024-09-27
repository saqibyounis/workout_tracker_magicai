import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.blue,
      primaryColorLight: Colors.lightBlueAccent,
      primaryColorDark: Colors.blue[800],
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
        headlineLarge: TextStyle(
            color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.normal),
        titleLarge: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
        titleSmall: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
        bodyLarge: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
        bodyMedium: TextStyle(
            color: Colors.black54, fontSize: 14, fontWeight: FontWeight.normal),
        bodySmall: TextStyle(
            color: Colors.black54, fontSize: 12, fontWeight: FontWeight.normal),
        labelLarge: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal),
        labelSmall: TextStyle(
            color: Colors.black54, fontSize: 12, fontWeight: FontWeight.normal),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.black, // Primary color for dark theme
      primaryColorLight: Colors.grey[800], // Lighter shade for dark theme
      primaryColorDark: Colors.black87, // Darker shade for dark theme
      scaffoldBackgroundColor:
          Colors.grey[900], // Background color for the scaffold
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        headlineLarge: TextStyle(
            color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal),
        titleLarge: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
        titleSmall: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
        bodyLarge: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
        bodyMedium: TextStyle(
            color: Colors.white70, fontSize: 14, fontWeight: FontWeight.normal),
        bodySmall: TextStyle(
            color: Colors.white70, fontSize: 12, fontWeight: FontWeight.normal),
        labelLarge: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
        labelSmall: TextStyle(
            color: Colors.white70, fontSize: 12, fontWeight: FontWeight.normal),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.teal, // Default button color for dark theme
        textTheme: ButtonTextTheme.primary, // Text color for buttons
      ),
      appBarTheme: AppBarTheme(
        color: Colors.black, // AppBar color for dark theme
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ), // AppBar title text
      ),
    );
  }
}
