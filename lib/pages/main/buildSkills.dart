import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/service/skills_services.dart';
import 'package:untitled/utils/util_color.dart';

import 'buildTitle.dart';

// ignore: camel_case_types
class buildOtherSkills extends StatelessWidget {
  buildOtherSkills({
    Key? key,
  }) : super(key: key);

  final SkillService _skillService = SkillService();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 370,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const buildTitle(title: "Other Skills"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: StreamBuilder(
                    stream: _skillService.getSkill(),
                    builder: (context, snapshot) {
                      return !snapshot.hasData
                          ? const CircularProgressIndicator()
                          : GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                              ),
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: ((context, index) {
                                DocumentSnapshot skills = snapshot.data!.docs[index];
                                return Container(
                                  margin: const EdgeInsets.symmetric(vertical: 20),
                                  decoration:
                                      BoxDecoration(color: appColors.mein, borderRadius: BorderRadius.circular(24)),
                                  child: Center(
                                    child: Text(
                                      "${skills['name']}",
                                      style: const TextStyle(fontSize: 18, height: 1.3, color: Colors.white),
                                    ),
                                  ),
                                );
                              }));
                    }),
              ),
            ],
          ),
        ),
      );
}
