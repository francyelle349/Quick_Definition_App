import 'package:flutter/material.dart';
import 'package:quickdefinitionapp1/auth/presentation/pages/InitialScreen.dart';
import 'package:quickdefinitionapp1/core/theme/theme.dart';

void main() async {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Definition',
      theme: AppTheme.ThemeMode,
      home: const InitialScreen(),
    );
  }
}
