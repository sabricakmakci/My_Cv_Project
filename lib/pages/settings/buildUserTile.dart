import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/service/user_services.dart';

// ignore: camel_case_types
class buildUserTile extends StatelessWidget {
  buildUserTile({super.key});
  final UserService _userService = UserService();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _userService.getUser(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    DocumentSnapshot user = snapshot.data!.docs[index];
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(user['image']),
                      ),
                      title: Text(
                        "${user['name']}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("${user['subtitle']}"),
                    );
                  }));
        });
  }
}
