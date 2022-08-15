import 'package:dezzex/Models/login_response.dart';
import 'package:dezzex/Models/register_response.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../Services/user_services.dart';


class Controller extends GetxController
{
  var isLoading = false.obs;
  LoginResponse loginResponse =LoginResponse();
  RegisterResponse registerResponse=RegisterResponse();
  Future login({username,password}) async {
    if (kDebugMode) {
      print("login controller  call********");
    }
    try {
      isLoading(true);
      LoginResponse response = await LoginService.login(username: username, password: password);
      if (response != null) {
        isLoading(false);
        if (kDebugMode) {
          print("login api response printed in controller ::: $response");
        }
        loginResponse = response;
        if (kDebugMode) {
          print("Login controller check********");
        }
        return response;
      }
    }
    catch(e){
      Get.snackbar("Error calling api", e.toString());

    }
    finally {

      isLoading(false);

    }
  }
  Future register({username,password,email,phonenumber,bankaccount}) async {
    if (kDebugMode) {
      print("register controller  call********");
    }
    try {
      isLoading(true);
      RegisterResponse response = await LoginService.register(username: username, password: password, phonenumber: phonenumber,bankaccount: bankaccount,email: email);
      if (response != null) {
        isLoading(false);
        if (kDebugMode) {
          print("register api response printed in controller ::: $response");
        }
        registerResponse = response;
        if (kDebugMode) {
          print("register controller check********");
        }
        return response;
      }
    }
catch(e){
      Get.snackbar("Error calling api", e.toString());

}
    finally {
      isLoading(false);
    }
  }



}