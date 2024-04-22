import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFFAC2F)),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Color(0xFF1B1D28),
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        color: Color(0xFF1B1D28),
        fontSize: 13,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF7A7F9E),
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: Color(0xFF212330),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        color: Color(0xFF1B1D28),
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: Color(0xFF171822),
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    ));

Color primaryColor = Color(0xFFFFAC2F);
Color backgroundColor = Color(0xFFF1F3F6);
