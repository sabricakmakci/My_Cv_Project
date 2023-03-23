import 'package:flutter/material.dart';
import 'package:untitled/models/projects_model.dart';

import '../utils/util_color.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My Projects'),
        centerTitle: true,
        backgroundColor: appColors.mein,
      ) ,
      body: ListView.builder(
        itemCount: denemelist.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(image: AssetImage(denemelist[index].image),
                          fit: BoxFit.cover),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        child: Text(denemelist[index].name,
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: appColors.mein),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
                    child: Text(
                     denemelist[index].desc,
                      style: TextStyle(fontSize: 16),),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){},
                        child: Text(
                          'Learn More >',
                          style: TextStyle(color: appColors.mein),),)
                    ],
                  )
                ],
              ),
            ),
          );
         },
       )
     );
    }



}
