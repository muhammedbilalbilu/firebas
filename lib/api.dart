// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.success,
    required this.message,
    required this.totalActivityId,
    required this.data,
  });

  bool success;
  String message;
  String totalActivityId;
  List<Datum> data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        success: json["success"],
        message: json["message"],
        totalActivityId: json["Total activity id  "],
        data: List<Datum>.from(json["Data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "Total activity id  ": totalActivityId,
        "Data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.logo,
    required this.address,
    required this.contactNumber,
    required this.fb,
    required this.details,
    required this.mapLink,
    required this.price,
    required this.offerPrice,
    required this.createdAt,
    required this.updatedAt,
    required this.activityTypeId,
  });

  int id;
  String name;
  String image1;
  String image2;
  String image3;
  String image4;
  String image5;
  String logo;
  String address;
  String contactNumber;
  String fb;
  String details;
  String mapLink;
  String price;
  String offerPrice;
  DateTime createdAt;
  DateTime updatedAt;
  String activityTypeId;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        image1: json["image1"],
        image2: json["image2"],
        image3: json["image3"],
        image4: json["image4"],
        image5: json["image5"],
        logo: json["logo"],
        address: json["address"],
        contactNumber:
            json["contact_number"] == null ? null : json["contact_number"],
        fb: json["fb"],
        details: json["details"],
        mapLink: json["map_link"],
        price: json["price"],
        offerPrice: json["offer_price"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        activityTypeId: json["activity_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image1": image1,
        "image2": image2,
        "image3": image3,
        "image4": image4,
        "image5": image5,
        "logo": logo,
        "address": address,
        "contact_number": contactNumber == null ? null : contactNumber,
        "fb": fb,
        "details": details,
        "map_link": mapLink,
        "price": price,
        "offer_price": offerPrice,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "activity_type_id": activityTypeId,
      };
}
