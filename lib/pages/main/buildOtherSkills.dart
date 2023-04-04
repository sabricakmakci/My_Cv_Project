import 'package:flutter/material.dart';

import '../../common/common_sizedbox.dart';
import 'buildLang.dart';
import 'buildTitle.dart';

// ignore: camel_case_types
class buildOtherSkills extends StatelessWidget {
  const buildOtherSkills({
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
              const buildTitle(title: 'Other Skills'),
              normalSizedBox(),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const buildLang(name: 'Teamwork'),
                  const SizedBox(
                    width: 32,
                  ),
                  const buildLang(name: 'Attention'),
                ],
              ),
              normalSizedBox(),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const buildLang(name: 'Detail'),
                  const SizedBox(
                    width: 32,
                  ),
                  const buildLang(name: 'Multitasking'),
                ],
              ),
            ],
          ),
        ),
      );
}