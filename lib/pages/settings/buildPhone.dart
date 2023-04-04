import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/common_iconwidget.dart';

// ignore: camel_case_types
class buildPhone extends StatelessWidget {
  const buildPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('+905393720253'),
      leading: const commonIconWidget(icon: Icons.phone, color: Colors.grey),
      onTap: () async {
        final url = Uri.parse('sms:+05393720253');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
