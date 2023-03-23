import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../utils/util_color.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final double profileHeight = 144;
  final double coverHeight = 280;
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
    // TODO: implement initState
    super.initState();
    fetchFileData();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContext(),
          SizedBox(height: 100,)
        ],
      )

);

  }
  Widget coverImage() => Container(
    color: Colors.white70,
    child: Image.asset("assets/images/codeflutter.jpg",
      height: coverHeight,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  );

  Widget profileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: AssetImage("assets/images/img.png"),
  );

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
            child: coverImage()),
        Positioned(
            top: top,
            child: profileImage())
      ],
    );
  }

  Widget buildContext() => Column(
    children: [
      const SizedBox(height: 8),
       Text(
          'Sabri Cakmakci',
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: appColors.mein),
      ),
      const SizedBox(height: 8),
      Text(
        ' Sr. Mobile App Developer',
        style: TextStyle(
            fontSize: 20,
            color: Colors.black26),
      ),
      const SizedBox(height: 16,),
      Divider(),
      const SizedBox(height: 16,),
      buildAbout(),
      SizedBox(height: 8,),
      Divider(),
      SizedBox(height: 8,),
      buildOtherSkills(),
      SizedBox(height: 8,),
      Divider(),
      SizedBox(height: 8,),
      buildOtherLanguages(),

    ],
  );

  Widget buildAbout() => Container (
    width: 370,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          SizedBox(height: 8,),
          buildTitle('About Me'),
          SizedBox(height: 8,),
          Text(data ,
            style: TextStyle(fontSize: 18,height: 1.3,color: appColors.mein),
          )
        ],
      ),
    ),
  );

  Widget buildOtherSkills() => Container (
    width: 370,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          SizedBox(height: 8,),
          buildTitle('Other Skills'),
          SizedBox(height: 16,),
          Row(
            children: [
              buildLang('Teamwork'),
              SizedBox(width: 30,),
              buildLang('Attention'),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              buildLang('Detail'),
              SizedBox(width: 30,),
              buildLang('Multitasking'),
            ],
          ),
        ],
      ),
    ),
  );

  Widget buildOtherLanguages() => Container (
    width: 370,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          SizedBox(height: 8,),
          buildTitle('Languages'),
          SizedBox(height: 16,),
          Row(
            children: [
              buildLang('English'),
              SizedBox(width: 30,),
              buildLang('Arabic'),
            ],
          ),
        ],
      ),
    ),
  );


  Widget buildLang (String name) => Container(
    width: 120,
    height: 60,
    decoration: BoxDecoration(
        color:appColors.mein,
        borderRadius: BorderRadius.circular(24)
    ),
    child: Center(
      child: Text(name ,
        style: TextStyle(fontSize: 18,height: 1.3,color: Colors.white),
      ),
    ),
  );

  Widget buildTitle(String title) => Container(
    alignment: Alignment.topLeft,
    child: Text(
      title,
      style: TextStyle(fontSize: 28, color: appColors.mein),
    ),
  );
}



