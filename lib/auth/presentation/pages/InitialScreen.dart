import 'package:flutter/material.dart';
import 'dart:async';

import 'package:quickdefinitionapp1/auth/presentation/pages/QuickDefinition.dart';



class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {


  @override
  void initState(){
    super.initState();
    startTime();
  }
  void startTime(){
    Timer(Duration(seconds: 2), navigateToAnotherScreen);
  }

  void navigateToAnotherScreen(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => quickDefinitionApp()));
  

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Quick Definition ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ), 
            Image.network('https://img.icons8.com/?size=100&id=44045&format=png&color=000000')
          ],
        ),
      ),
    );
  }
}

