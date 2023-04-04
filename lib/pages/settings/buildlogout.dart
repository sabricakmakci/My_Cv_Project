import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../common/common_iconwidget.dart';
import '../login/login_view.dart';

// ignore: camel_case_types
class buildlogout extends StatelessWidget {
  const buildlogout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('LogOut'),
      leading: const commonIconWidget(icon: Icons.logout, color: Colors.blue),
      onTap: () {
        FirebaseAuth.instance.signOut().then((value) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn()));
        });
      },
    );
  }
}
