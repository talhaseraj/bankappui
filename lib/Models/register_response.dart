// To parse this JSON data, do
//
//     final registerResponse = registerResponseFromJson(jsonString);

import 'dart:convert';

RegisterResponse registerResponseFromJson(String str) => RegisterResponse.fromJson(json.decode(str));

String registerResponseToJson(RegisterResponse data) => json.encode(data.toJson());

class RegisterResponse {
  RegisterResponse({
    this.id,
    this.email,
    this.phoneNo,
    this.bankAccount,
    this.password,
    this.lastLogin,
    this.isSuperuser,
    this.username,
    this.firstName,
    this.lastName,
    this.isStaff,
    this.isActive,
    this.dateJoined,
    this.name,
    this.groups,
    this.userPermissions,
  });

  int? id;
  String? email;
  String? phoneNo;
  String? bankAccount;
  String? password;
  dynamic lastLogin;
  bool? isSuperuser;
  String? username;
  String? firstName;
  String? lastName;
  bool? isStaff;
  bool? isActive;
  DateTime? dateJoined;
  String? name;
  List<dynamic>? groups;
  List<dynamic>? userPermissions;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => RegisterResponse(
    id: json["id"],
    email: json["email"],
    phoneNo: json["phone_no"],
    bankAccount: json["bank_account"],
    password: json["password"],
    lastLogin: json["last_login"],
    isSuperuser: json["is_superuser"],
    username: json["username"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    isStaff: json["is_staff"],
    isActive: json["is_active"],
    dateJoined: DateTime.parse(json["date_joined"]),
    name: json["name"],
    groups: List<dynamic>.from(json["groups"].map((x) => x)),
    userPermissions: List<dynamic>.from(json["user_permissions"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "phone_no": phoneNo,
    "bank_account": bankAccount,
    "password": password,
    "last_login": lastLogin,
    "is_superuser": isSuperuser,
    "username": username,
    "first_name": firstName,
    "last_name": lastName,
    "is_staff": isStaff,
    "is_active": isActive,
    "date_joined": dateJoined?.toIso8601String(),
    "name": name,
    "groups": List<dynamic>.from(groups!.map((x) => x)),
    "user_permissions": List<dynamic>.from(userPermissions!.map((x) => x)),
  };
}
