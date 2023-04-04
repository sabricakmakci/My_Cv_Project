import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getProject() {
    var ref = _firestore.collection("projects").snapshots();
    return ref;
  }
}
