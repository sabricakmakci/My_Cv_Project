import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/common_iconwidget.dart';

// ignore: camel_case_types
class buildFacebook extends StatelessWidget {
  const buildFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('SabriCakmakci'),
      leading: const commonIconWidget(icon: Icons.facebook, color: Colors.blueAccent),
      onTap: () async {
        final url = Uri.parse('https://www.facebook.com/MATADOR1953/');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
