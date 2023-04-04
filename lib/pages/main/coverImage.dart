import 'package:flutter/material.dart';

// ignore: camel_case_types
class coverImage extends StatelessWidget {
  const coverImage({super.key});
    final double coverHeight = 280;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white70,
        child: Image.asset(
          "assets/images/codeflutter.jpg",
          height: coverHeight,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );
  }
}