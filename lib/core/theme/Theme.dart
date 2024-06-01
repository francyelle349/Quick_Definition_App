import 'package:flutter/material.dart';
import 'package:quickdefinitionapp1/core/theme/app_pallete.dart';

class AppTheme {
  static   OutlineInputBorder _border([Color color = AppPallete.borderColor]) =>  OutlineInputBorder(
              borderSide: BorderSide(
                color: color,
              width: 3));
  static final ThemeMode = ThemeData.light().copyWith(
      inputDecorationTheme:  InputDecorationTheme(
        contentPadding: const EdgeInsets.all(20),
          enabledBorder: _border(),
          focusedBorder: _border(AppPallete.purple)), );
}

