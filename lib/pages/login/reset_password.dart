import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/util_color.dart';

import '../../common/common_textField.dart';
import '../../common/common_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Reset Password',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: appColors.mein),
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(children: [
                  commonTextField(" Enter Email Adress", Icons.person_outline, false, _emailTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  commonButton(context, "RESET PASSWORD", () {
                    FirebaseAuth.instance
                        .sendPasswordResetEmail(email: _emailTextController.text)
                        .then((value) => Navigator.of(context).pop());
                  })
                ]))));
  }
}
