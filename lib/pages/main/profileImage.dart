import 'package:flutter/material.dart';

class profileImage extends StatelessWidget {
  const profileImage({super.key});

  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: const AssetImage("assets/images/img.png"),
    );
  }
}
