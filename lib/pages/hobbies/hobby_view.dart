import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/service/hobbies_services.dart';
import 'package:untitled/utils/util_color.dart';

class HobbyPage extends StatefulWidget {
  const HobbyPage({Key? key}) : super(key: key);

  @override
  State<HobbyPage> createState() => _HobbyPageState();
}

class _HobbyPageState extends State<HobbyPage> {
  final HobbyService _hobbyService = HobbyService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Hobbies'),
        centerTitle: true,
        backgroundColor: appColors.mein,
      ),
      body: StreamBuilder(
          stream: _hobbyService.getHobby(),
          builder: (context, snapshot) {
            return !snapshot.hasData
                ? const CircularProgressIndicator()
                : ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot hobbies = snapshot.data!.docs[index];
                      return Card(
                        shadowColor: Colors.black54,
                        elevation: 2,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(32),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: NetworkImage(hobbies['image']),
                                    height: 32,
                                    width: 32,
                                  )),
                              const SizedBox(
                                height: 50,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Text(
                                      "${hobbies['title']}",
                                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
          }),
    );
  }
}
