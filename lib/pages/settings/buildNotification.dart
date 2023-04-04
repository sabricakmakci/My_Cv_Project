import 'package:flutter/material.dart';

import '../../common/common_iconwidget.dart';

// ignore: camel_case_types
class buildNotification extends StatelessWidget {
  const buildNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Notification ',
      ),
      subtitle: const Text('New Letters, App Update'),
      leading: const commonIconWidget(icon: Icons.notifications, color: Colors.orange),
      onTap: () {},
    );
  }
}
