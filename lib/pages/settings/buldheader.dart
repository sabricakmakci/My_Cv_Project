import 'package:flutter/material.dart';

// ignore: camel_case_types
class buildHeader extends StatelessWidget {
  const buildHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
