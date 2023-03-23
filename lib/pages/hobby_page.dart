import 'package:flutter/material.dart';
import 'package:untitled/models/projects_model.dart';

import '../reusable_widgets/reusable_logowidget.dart';
import '../utils/util_color.dart';

class HobbyPage extends StatefulWidget {
  const HobbyPage({Key? key}) : super(key: key);

  @override
  State<HobbyPage> createState() => _HobbyPageState();
}

class _HobbyPageState extends State<HobbyPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My Hobbies'),
        centerTitle: true,
        backgroundColor: appColors.mein,
      ),
      body: ListView.builder(
           itemCount: hobbyitems.length,
          itemBuilder: (context, index){
            return Card(
              shadowColor: Colors.black54,
              elevation: 2,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(hobbyitems[index].image,
                        height: 32,
                        width: 32,),
                    ),
                    SizedBox(height: 50,),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(hobbyitems[index].title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),


                        ],
                      ),
                    ),
                  ],
                ),
              ),

            );
          }),
    );

  }
}
