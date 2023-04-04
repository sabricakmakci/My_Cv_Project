import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/service/user_services.dart';
import 'package:untitled/utils/util_color.dart';

import '../../common/common_sizedbox.dart';
import 'buildTitle.dart';

// ignore: camel_case_types
class buildAbout extends StatelessWidget {
  buildAbout({
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
                  return SizedBox(
                    width: 370,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          smallSizedBox(),
                          const buildTitle(title: 'About Me'),
                          smallSizedBox(),
                          Text(
                            "${user['desc']}",
                            style: TextStyle(fontSize: 18, height: 1.3, color: appColors.mein),
                          )
                        ],
                      ),
                    ),
                  );
                }));
      });
}
