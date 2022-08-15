import 'package:dezzex/Models/login_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dezzex/urls.dart';

class LoginService {
  static var client = http.Client;

  static Future login(
      {required String username, required String password}) async {
    var response = await http.post(Uri.parse(baseUrl + loginEndpoint), body: {
      "username": username,
      "password": password,
    });
    if (kDebugMode) {
      print(
          "Login : ${baseUrl + loginEndpoint}");
      print("Login RESPONSE : ${response.body}");
    }
    if (response.statusCode == 200) {
      var jsonString = response.body;
      if (kDebugMode) {
        print("login service********");
      }
      return loginResponseFromJson(jsonString);
    } else {
      if (kDebugMode) {
        print("error");
      }
      debugPrint("error accor in login service********");
      return null;
    }
  }
  static Future register(
      {required  username, required  password,required bankaccount,required email,required phonenumber}) async {
    var response = await http.post(Uri.parse(baseUrl + loginEndpoint), body: {
      "username": username,
      "password": password,
      "bankaccount":bankaccount,
      "email":email,
      "phonenumber":phonenumber
    });
    if (kDebugMode) {
      print(
          "Login : ${baseUrl + loginEndpoint}");
      print("Login RESPONSE : ${response.body}");
    }
    if (response.statusCode == 200) {
      var jsonString = response.body;
      if (kDebugMode) {
        print("login service********");
      }
      return loginResponseFromJson(jsonString);
    } else {
      if (kDebugMode) {
        print("error");
      }
      debugPrint("error accor in login service********");
      return null;
    }
  }
}
