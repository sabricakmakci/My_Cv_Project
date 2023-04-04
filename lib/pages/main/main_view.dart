import 'package:flutter/material.dart';
import 'buildContext.dart';
import 'buildTop.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        const buildTop(),
        buildContext(),
        const SizedBox(
          height: 100,
        )
      ],
    ));
  }
}
