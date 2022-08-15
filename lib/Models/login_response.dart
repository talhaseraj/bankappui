// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    this.token,
    this.username,
    this.email,
    this.id,
  });

  String? token;
  String? username;
  String? email;
  int? id;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    token: json["token"],
    username: json["username"],
    email: json["email"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "username": username,
    "email": email,
    "id": id,
  };
}
