import 'package:flutter/material.dart';

import '../../common/common_iconwidget.dart';

// ignore: camel_case_types
class buildDeleteAcount extends StatelessWidget {
  const buildDeleteAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Delete Acount'),
      leading: const commonIconWidget(icon: Icons.delete, color: Colors.pink),
      onTap: () {},
    );
  }
}
