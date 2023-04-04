import 'package:cloud_firestore/cloud_firestore.dart';

class SkillService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getSkill() {
    var ref = _firestore.collection("skills").snapshots();
    return ref;
  }
}
