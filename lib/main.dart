import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valentine/home_page.dart';
import 'package:valentine/themes/default_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Valentine',
      theme: defaultTheme,
      routerConfig: GoRouter(
        routes: <GoRoute>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) =>
                const HomePage(),
          ),
        ],
      ),
    );
  }
}
