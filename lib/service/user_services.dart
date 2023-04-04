import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getUser() {
    var ref = _firestore.collection("user").snapshots();
    return ref;
  }
}
