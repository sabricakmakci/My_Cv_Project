import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/service/project_services.dart';

import '../../utils/util_color.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final ProjectService _projectService = ProjectService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('My Projects'),
          centerTitle: true,
          backgroundColor: appColors.mein,
        ),
        body: StreamBuilder(
            stream: _projectService.getProject(),
            builder: (context, snapshot) {
              return !snapshot.hasData
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot projects = snapshot.data!.docs[index];
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
                                    Image(image: NetworkImage(projects['image']), fit: BoxFit.cover),
                                    Positioned(
                                      bottom: 16,
                                      left: 16,
                                      child: Text(
                                        "${projects['title']}",
                                        style:
                                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: appColors.mein),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
                                  child: Text(
                                    "${projects['desc']}",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Learn More >',
                                        style: TextStyle(color: appColors.mein),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
            }));
  }
}
