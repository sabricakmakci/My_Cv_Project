import 'package:flutter/material.dart';

// ignore: camel_case_types
class commonIconWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  const commonIconWidget({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      );
}
