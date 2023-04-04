import 'package:flutter/material.dart';
import 'package:untitled/common/common_sizedbox.dart';
import 'package:untitled/pages/settings/buildUserTile.dart';
import 'package:untitled/pages/settings/buildlogout.dart';
import '../../common/common_divider.dart';
import 'buildAccountSettings.dart';
import 'buildDeleteAcount.dart';
import 'buildFacebook.dart';
import 'buildGmail.dart';
import 'buildNotification.dart';
import 'buildPhone.dart';
import 'buldheader.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const buildHeader(),
            bigSizedBox(),
            const buildUserTile(),
            commonDivider(),
            const buildAccountSettings(),
            const buildNotification(),
            const buildlogout(),
            const buildDeleteAcount(),
            commonDivider(),
            const buildPhone(),
            const buildGmail(),
            const buildFacebook()
          ],
        ),
      ),
    );
  }
}
