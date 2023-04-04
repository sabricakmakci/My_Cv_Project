import 'package:cloud_firestore/cloud_firestore.dart';

class LanguageService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getLanguage() {
    var ref = _firestore.collection("languages").snapshots();
    return ref;
  }
}
