import 'package:flutter/material.dart';

import '../signup/signup_view.dart';

class signUpOptiopn extends StatelessWidget {
  const signUpOptiopn({super.key});

  @override
  Widget build(BuildContext context) {
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
}
