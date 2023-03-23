import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/pages/main_page.dart';
import 'package:untitled/pages/settings_page.dart';
import 'package:untitled/pages/search_page.dart';
import 'package:untitled/pages/hobby_page.dart';
import 'package:untitled/pages/signin_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../utils/util_color.dart';
import 'projects_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  int index = 2;

  final screens = [

    SearchPage(),
    ProjectsPage(),
    MainPage(),
    HobbyPage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.search, size: 30,),
      const Icon(Icons.library_books, size: 30,),
      const Icon(Icons.home, size: 30,),
      const Icon(Icons.favorite, size: 30,),
      const Icon(Icons.settings, size: 30,),
    ];
    return SafeArea(
      top: false,
      child: ClipRect(
        child: Scaffold(
          extendBody: true,
          body: screens[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: appColors.mein),),
          child:CurvedNavigationBar(
            color: Colors.white,
            backgroundColor: Colors.transparent,
            index: index,
            items: items,
            height: 60,
            onTap: (index) => setState(() => this.index = index),
          ),
          ),
        ),
      ),
    );
  }
}
