import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/pages/home/home_view.dart';
import 'package:untitled/pages/login/forgetPassword.dart';
import 'package:untitled/pages/login/reset_password.dart';
import 'package:untitled/pages/login/signUpOptiopn.dart';
import 'package:untitled/pages/signup/signup_view.dart';
import 'package:untitled/common/common_textField.dart';
import 'package:flutter/material.dart';

import '../../common/common_button.dart';
import '../../common/common_logowidget.dart';
import '../../utils/util_color.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: appColors.mein,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: [
                commonLogoWidget("assets/images/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                commonTextField(" Enter Email Adress", Icons.person_outline, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                commonTextField(" Enter Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(
                  height: 3,
                ),
                const forgetPassword(),
                commonButton(context, "LOG IN", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text, password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()))
                        .onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  });
                }),
                const signUpOptiopn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
