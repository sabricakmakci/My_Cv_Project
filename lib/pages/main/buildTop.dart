import 'package:flutter/material.dart';
import 'package:untitled/pages/main/profileImage.dart';

import 'coverImage.dart';

// ignore: camel_case_types
class buildTop extends StatelessWidget {
  const buildTop({super.key});

  final double profileHeight = 144;
  final double coverHeight = 280;

  @override
  Widget build(BuildContext context) {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom), 
          child: const coverImage()),
        Positioned(top: top, child: const profileImage())
      ],
    );
  }
}