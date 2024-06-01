import 'package:flutter/material.dart';
import 'package:quickdefinitionapp1/core/theme/app_pallete.dart';

class authField extends StatelessWidget {
  final String hintText;
  final controller;
  const authField({super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText,labelStyle: TextStyle(color: AppPallete.backgroundColor), ),
    );
  }
}