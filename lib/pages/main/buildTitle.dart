import 'package:flutter/material.dart';
import 'package:untitled/utils/util_color.dart';


// ignore: camel_case_types
class buildTitle extends StatelessWidget {
  const buildTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: TextStyle(fontSize: 28, color: appColors.mein),
        ),
      );
}