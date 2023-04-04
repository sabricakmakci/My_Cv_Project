import 'package:flutter/material.dart';
import 'package:untitled/utils/util_color.dart';

import '../../common/common_sizedbox.dart';
import 'buildTitle.dart';

// ignore: camel_case_types
class buildAbout extends StatelessWidget {
  const buildAbout({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 370,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              smallSizedBox(),
              const buildTitle(title: 'About Me'),
              smallSizedBox(),
              Text(
                data,
                style: TextStyle(fontSize: 18, height: 1.3, color: appColors.mein),
              )
            ],
          ),
        ),
      );
}
