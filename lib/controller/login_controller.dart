import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:letsgohome/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../component/fancy_bottom_navigator.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithEmail() async {
    try {
      var headers = {
        'Accept': 'application/json',
      };
      var url = Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.auth.loginEmail);
      Map<String, String> body = {
        'email': emailController.text.trim(),
        'password': passwordController.text,
      };

      http.Response response = await http.post(url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        Navigator.of(Get.context!).pushReplacement(MaterialPageRoute(builder: (context) => CustomFancyBottomNavigation()));
        // if(json['code']==0){
        //   var token = json ['data']['token'];
        //   print(token);
        //   final SharedPreferences prefs = await _prefs;
        //   await prefs?.setString('token', token);
        // }

        emailController.clear();
        passwordController.clear();
      }
    } catch (e) {
      print(e);
    }
  }
}