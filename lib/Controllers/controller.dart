import 'package:dezzex/Models/user_details.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../Services/user_services.dart';


class Controller extends GetxController
{
  var isLoading = false.obs;
  UserDetails userDetails =UserDetails();

  void login({username,password}) async {
    if (kDebugMode) {
      print("login controller  call********");
    }
    try {
      isLoading(true);
      UserDetails type = await LoginService.login(username: username, password: password);
      if (type != null) {
        isLoading(false);
        if (kDebugMode) {
          print("login api response printed in controller ::: $type");
        }
        userDetails = type;
        if (kDebugMode) {
          print("Login controller check********");
        }
      }
    } finally {
      isLoading(false);
    }
  }
  void register({username,password,email,phonenumber,bankaccount}) async {
    if (kDebugMode) {
      print("register controller  call********");
    }
    try {
      isLoading(true);
      UserDetails type = await LoginService.register(username: username, password: password, phonenumber: phonenumber,bankaccount: bankaccount,email: email);
      if (type != null) {
        isLoading(false);
        if (kDebugMode) {
          print("register api response printed in controller ::: $type");
        }
        userDetails = type;
        if (kDebugMode) {
          print("register controller check********");
        }
      }
    } finally {
      isLoading(false);
    }
  }



}