import 'package:flutter/material.dart';

// ignore: camel_case_types
class buildUserTile extends StatelessWidget {
  const buildUserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/images/img.png"),
      ),
      title: Text(
        'Sabri Cakmakci',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Sr. Mobile App Developer'),
    );
  }
}
