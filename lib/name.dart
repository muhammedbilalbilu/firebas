import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Name {
  String name;
  String id;
  Name({required this.name, required this.id});

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
      };

  static Name fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Name(
      id: snapshot["id"],
      name: snapshot["name"],
    );
  }
}



// import 'package:meta/meta.dart';
// import 'dart:convert';

// Name nameFromJson(String str) => Name.fromJson(json.decode(str));

// String nameToJson(Name data) => json.encode(data.toJson());

// class Name {
//     Name({
//         required this.name,
//     });

//     String name;

//     factory Name.fromJson(Map<String, dynamic> json) => Name(
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//     };
// }
