import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/common/common_sizedbox.dart';
import 'package:untitled/pages/main/buildTitle.dart';
import 'package:untitled/service/languages_services.dart';
import 'package:untitled/utils/util_color.dart';

// ignore: camel_case_types
class buildLanguages extends StatelessWidget {
  buildLanguages({
    Key? key,
  }) : super(key: key);
  final LanguageService _languageService = LanguageService();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 370,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              smallSizedBox(),
              const buildTitle(title: "Languages"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: StreamBuilder(
                    stream: _languageService.getLanguage(),
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
                                DocumentSnapshot languages = snapshot.data!.docs[index];
                                return Container(
                                  margin: const EdgeInsets.symmetric(vertical: 20),
                                  decoration:
                                      BoxDecoration(color: appColors.mein, borderRadius: BorderRadius.circular(24)),
                                  child: Center(
                                    child: Text(
                                      "${languages['name']}",
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
