import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class authButton extends StatelessWidget {
  

  const authButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: (){}, child: Text('Search', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),), style: ElevatedButton.styleFrom(fixedSize: Size(300, 50)));
  }
}