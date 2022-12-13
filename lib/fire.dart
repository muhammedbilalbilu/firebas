import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebas/name.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class Firebasedat {
  //  data post to firebase
  Future creatUser({required String name}) async {
    final docUser = firestore.collection('name').doc();
    Name _Name = Name(name: name, id: '');
    await docUser.set(_Name.toJson());
  }

  // data read

}
