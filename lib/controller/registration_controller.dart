import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:letsgohome/screens/login_page.dart';
import 'package:letsgohome/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    try {
      var headers = {
        'Accept': 'application/json',
      };
      var url = Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.auth.registrationwithEmail);
      Map<String, String> body = {
        'name': fullNameController.text,
        'email': emailController.text.trim(),
        'password': passwordController.text,
        'phone': phoneController.text,
        'confirmPassword': confirmPasswordController.text,
      };

      http.Response response = await http.post(url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        Navigator.of(Get.context!).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
        // if(json['code']==0){
        //   var token = json ['data']['token'];
        //   print(token);
        //   final SharedPreferences prefs = await _prefs;
        //   await prefs?.setString('token', token);
        // }

        fullNameController.clear();
        emailController.clear();
        passwordController.clear();
        confirmPasswordController.clear();
        phoneController.clear();
      }
    } catch (e) {
      print(e);
    }
  }
}