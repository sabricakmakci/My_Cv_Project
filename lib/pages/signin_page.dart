import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/reset_password.dart';
import 'package:untitled/pages/signup_page.dart';
import 'package:untitled/reusable_widgets/reausable_textField.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_button.dart';
import '../reusable_widgets/reusable_logowidget.dart';
import '../utils/util_color.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                logoWidget("assets/images/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(" Enter Email Adress", Icons.person_outline, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(" Enter Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(
                  height: 3,
                ),
                forgetPassword(context),
                projectButton(context, "LOG IN", () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text)
                  .then((value) {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  });
                }),
                signUpOptiopn()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOptiopn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have acount?", style: TextStyle(color: Colors.grey)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword (BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: Text("Forgot Password?",
        style: TextStyle(color: Colors.white70),
        textAlign: TextAlign.right,),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()))
        ,
      ),
    );
  }
}
