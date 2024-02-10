import 'package:flutter/material.dart';
import 'package:valentine/home_page.dart';
import 'package:valentine/themes/default_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valentine',
      theme: defaultTheme,
      home: const HomePage(),
    );
  }
}
