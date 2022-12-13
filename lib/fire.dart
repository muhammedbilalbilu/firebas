import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class Firebasedat {
  //  data post to firebase
  Future creatUser({required String name}) async {
    final docUser = firestore.collection('name').doc('1');
    final json = {'name': name};
    await docUser.set(json);
  }

  // data read

}
