// To parse this JSON data, do
//
//     final userDetails = userDetailsFromJson(jsonString);

import 'dart:convert';

UserDetails userDetailsFromJson(String str) => UserDetails.fromJson(json.decode(str));

String userDetailsToJson(UserDetails data) => json.encode(data.toJson());

class UserDetails {
  UserDetails({
     this.response,
     this.message,
     this.details,
  });

  bool? response;
  String? message;
  Details? details;

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
    response: json["response"],
    message: json["message"],
    details: Details.fromJson(json["details"]),
  );

  Map<String, dynamic> toJson() => {
    "response": response,
    "message": message,
    "details": details?.toJson(),
  };
}

class Details {
  Details({
    required this.id,
    required this.name,
    required this.email,
    required this.bankaccount,
    required this.phonenumber,
  });

  String id;
  String name;
  String email;
  String bankaccount;
  String phonenumber;

  factory Details.fromJson(Map<String, dynamic> json) => Details(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    bankaccount: json["bankaccount"],
    phonenumber: json["phonenumber"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "bankaccount": bankaccount,
    "phonenumber": phonenumber,
  };
}
