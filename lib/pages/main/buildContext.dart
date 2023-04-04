import 'package:flutter/material.dart';
import 'package:untitled/utils/util_color.dart';

import '../../common/common_sizedbox.dart';
import 'buildAbout.dart';
import 'buildOtherLanguages.dart';
import 'buildOtherSkills.dart';

// ignore: camel_case_types
class buildContext extends StatelessWidget {
  const buildContext({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          smallSizedBox(),
          Text(
            'Sabri Cakmakci',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: appColors.mein),
          ),
          smallSizedBox(),
          const Text(
            ' Sr. Mobile App Developer',
            style: TextStyle(fontSize: 20, color: Colors.black26),
          ),
          normalSizedBox(),
          const Divider(),
          normalSizedBox(),
          buildAbout(data: data),
          smallSizedBox(),
          const Divider(),
          buildOtherSkills(),
          const Divider(),
          buildOtherLanguages(),
        ],
      );
}
