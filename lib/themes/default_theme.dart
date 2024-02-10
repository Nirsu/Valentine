import 'package:flutter/material.dart';

/// The default theme for the application.
final ThemeData defaultTheme = ThemeData(
  fontFamily: 'Geist',
  textTheme: _defaultTextTheme,
  useMaterial3: true,
);

const TextTheme _defaultTextTheme = TextTheme(
  titleLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
  titleMedium: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
  ),
  bodySmall: TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
  ),
);
