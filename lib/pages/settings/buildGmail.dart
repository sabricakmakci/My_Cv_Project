import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/common_iconwidget.dart';

class buildGmail extends StatelessWidget {
  const buildGmail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('cakmakcisabrii@gmail.com'),
      leading: const commonIconWidget(icon: Icons.mail, color: Colors.red),
      onTap: () async {
        final url = Uri.parse('mailto:cakmakcisabrii@gmail.com');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
