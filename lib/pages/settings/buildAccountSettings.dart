import 'package:flutter/material.dart';

import '../../common/common_iconwidget.dart';

// ignore: camel_case_types
class buildAccountSettings extends StatelessWidget {
  const buildAccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Account Settings',
      ),
      subtitle: const Text('Privacy, Security, Language'),
      leading: const commonIconWidget(icon: Icons.person, color: Colors.green),
      onTap: () {},
    );
  }
}
