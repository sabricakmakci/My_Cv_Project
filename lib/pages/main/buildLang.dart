import 'package:flutter/material.dart';
import 'package:untitled/utils/util_color.dart';

// ignore: camel_case_types
class buildLang extends StatelessWidget {
  const buildLang({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) => Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(color: appColors.mein, borderRadius: BorderRadius.circular(24)),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(fontSize: 18, height: 1.3, color: Colors.white),
          ),
        ),
      );
}
