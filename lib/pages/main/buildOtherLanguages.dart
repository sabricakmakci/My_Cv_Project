import 'package:flutter/material.dart';

import '../../common/common_sizedbox.dart';
import 'buildLang.dart';
import 'buildTitle.dart';

// ignore: camel_case_types
class buildOtherLanguages extends StatelessWidget {
  const buildOtherLanguages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 370,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              smallSizedBox(),
              const buildTitle(title: 'Languages'),
              normalSizedBox(),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                   const buildLang(name: 'English'),
                   const SizedBox(
                    width: 32,
                  ),
                  const buildLang(name: 'Arabic'),
                ],
              ),
            ],
          ),
        ),
      );
}



