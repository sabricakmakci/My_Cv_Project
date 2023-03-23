
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reausable_textField.dart';
import '../reusable_widgets/reusable_button.dart';
import '../utils/util_color.dart';
import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _useernameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Sign Up',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: appColors.mein),
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField(" Enter Username", Icons.person_outline, false, _useernameTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField(" Enter Email Adress", Icons.person_outline, false, _emailTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField(" Enter Password", Icons.lock_outline, true, _passwordTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  projectButton(context, "SIGN UP", () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                        .then((value){
                          print("Created New Account");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  }),
                ]))));
  }
}
