import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'buildContext.dart';
import 'buildTop.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String data = '';

  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('textFiles/aboutme_tex.txt');
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchFileData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        const buildTop(),
       buildContext(data: data),
        const SizedBox(
          height: 100,
        )
      ],
    ));
  }
}

