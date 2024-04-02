import 'package:flutter/material.dart';
import 'package:letsgohome/component/fancy_bottom_navigator.dart';
import 'package:letsgohome/screens/case_of_emergency.dart';
import 'package:letsgohome/screens/forgetpassword_page.dart';
import 'package:letsgohome/screens/healthStatus_page.dart';
import 'package:letsgohome/screens/homepage.dart';
import 'package:letsgohome/screens/login_page.dart';
import 'package:letsgohome/screens/newpassword_page.dart';
import 'package:letsgohome/screens/newstudent_page.dart';
import 'package:letsgohome/screens/notification_page.dart';
import 'package:letsgohome/screens/register_page.dart';
import 'package:letsgohome/screens/testingGoogleMap.dart';
import 'package:letsgohome/screens/verify_page.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Color(0xffD9D9D9)
      ),
      home: HomePage(),
      routes: {
        'SignUp': (context) => RegisterPage(),
        "Login":(context) => LoginPage(),
        "ForgetPassword" : (context) => ForgetPasswordPage(),
        "Verify" : (context) => VerifyPage(),
        "ResetPassword": (context)=> ResetPassword(),
        'notification':(context)=> NotificationPage(),
        'heaithstatus':(context) => HeathStatus(),
        'bottomBar':(context)=> CustomFancyBottomNavigation()



      },
    );
  }
}

