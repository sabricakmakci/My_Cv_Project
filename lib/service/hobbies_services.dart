import 'package:cloud_firestore/cloud_firestore.dart';

class HobbyService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getHobby() {
    var ref = _firestore.collection("hobbies").snapshots();
    return ref;
  }
}
