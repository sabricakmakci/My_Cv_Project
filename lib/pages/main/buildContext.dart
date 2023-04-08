import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/service/user_services.dart';
import 'package:untitled/utils/util_color.dart';

import '../../common/common_sizedbox.dart';
import 'buildAbout.dart';
import 'buildLanguages.dart';
import 'buildSkills.dart';

// ignore: camel_case_types
class buildContext extends StatelessWidget {
  buildContext({
    Key? key,
  }) : super(key: key);

  final UserService _userService = UserService();

  @override
  Widget build(BuildContext context) => StreamBuilder(
      stream: _userService.getUser(),
      builder: (context, snapshot) {
        return !snapshot.hasData
            ? const CircularProgressIndicator()
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data!.docs.length,
                itemBuilder: ((context, index) {
                  DocumentSnapshot user = snapshot.data!.docs[index];
                  return Column(
                    children: [
                      smallSizedBox(),
                      Text(
                        "${user['name']}",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: appColors.mein),
                      ),
                      smallSizedBox(),
                      Text(
                        "${user['subtitle']}",
                        style: const TextStyle(fontSize: 20, color: Colors.black26),
                      ),
                      normalSizedBox(),
                      const Divider(),
                      normalSizedBox(),
                      buildAbout(),
                      smallSizedBox(),
                      const Divider(),
                      buildSkills(),
                      const Divider(),
                      buildLanguages(),
                    ],
                  );
                }));
      });
}
