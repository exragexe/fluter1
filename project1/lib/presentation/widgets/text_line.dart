import 'package:flutter/material.dart';

class TextLine extends StatelessWidget {
  final String text;
  const TextLine({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.ltr,
    
      style: const TextStyle(fontSize: 24),
      
    );
  }
}