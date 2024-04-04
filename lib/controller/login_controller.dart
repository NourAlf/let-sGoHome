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

      if (
          emailController.text.isEmpty ||
          passwordController.text.isEmpty
          ) {
        // Display error or show validation message to the user
        return;
      }

      Map<String, String> body = {
        'email': emailController.text.trim(),
        'password': passwordController.text.trim(),
      };

      http.Response response = await http.post(url, body: body, headers: headers);
      print('''
      $url
          'email': ${emailController.text.trim()},
    'password': ${passwordController.text.trim()},
          }
      ''');
      print(" respppppponse = ${response.body}");
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        if (json['status'] == true) {
          var token = json['token'];
          print(token);
          final SharedPreferences prefs = await _prefs;
          await prefs?.setString('token', token);
          Get.to(CustomFancyBottomNavigation());
          print(response.body);
        }

        emailController.clear();
        passwordController.clear();


      }else{
        throw jsonDecode(response.body)['message'] ?? "unknown erroeOccured";
      }
    } catch (e) {
      Get.back();
      showDialog(context: Get.context!,
          builder: (context){
            return SimpleDialog(
              title: Text("error"),
              contentPadding: EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });

    }
  }
}