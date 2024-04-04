import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:letsgohome/controller/login_controller.dart';
import 'package:letsgohome/screens/homepage.dart';

import 'package:get/get.dart';
import '../controller/login_controller.dart';

import '../controller/registration_controller.dart';




class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegistrationController registerController = Get.put(RegistrationController());
  LoginController loginController = Get.put(LoginController());
var islogin = false.obs;

  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  String _passwordError = '';
  String _confirmPasswordError = '';

  @override
  void dispose() {
    registerController.passwordController.dispose();
    registerController.confirmPasswordController.dispose();
    super.dispose();
  }

  bool _isPasswordValid(String password) {
    // Password validation rules
    if (password.isEmpty) {
      setState(() {
        _passwordError = 'Please enter a password';
      });
      return false;
    } else if (password.length < 8) {
      setState(() {
        _passwordError = 'Password must be at least 8 characters long';
      });
      return false;
    }
    setState(() {
      _passwordError = '';
    });
    return true;
  }
  bool _doPasswordsMatch(String password, String confirmPassword) {
    if (password != confirmPassword) {
      _confirmPasswordError = 'Passwords do not match';
      return false;
    }
    _confirmPasswordError = '';
    return true;
  }







  // void _register() {
  //   if (_formKey.currentState!.validate()) {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context)=>  LoginPage()),);
  //
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 430,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF5C955D),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                );
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // Add your content for the small container here
            ),
          ),
          Positioned(
            top: 130,
            left: 27,
            child: Text(
              'Register',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 27,
            child: Text(
              'Please fill out the following form to create a new account',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 200, left: 27, right: 27),
              width: 300,
              height: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Form(
                key: _formKey,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    TextFormField(
                      controller: registerController.fullNameController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        hintText: 'Full Name',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: registerController.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        hintText: 'YourEmail@gmail.com',
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Email is required';
                        } else if (!value!.contains('@')) {
                          return 'Invalid email address, should contain (@)';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: registerController.phoneController,
                      keyboardType: TextInputType.phone,
                      
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        hintText: 'Phone Number',


                        prefixIcon: Icon(Icons.phone),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        } else if (value.length < 10) {
                          return 'Phone number should be at least 10 digits';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height:20 ,),
                    TextFormField(


                      controller: registerController.passwordController,
                      obscureText: _isPasswordVisible,

                      onChanged: (value) {
                        _isPasswordValid(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    if (_passwordError.isNotEmpty)
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _passwordError,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: registerController.confirmPasswordController,
                      obscureText: !_isConfirmPasswordVisible,
                      onChanged: (value) {
                        _doPasswordsMatch(registerController.passwordController.text, value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        prefixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                            });
                          },
                          child: Icon(
                            _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                    if (_confirmPasswordError.isNotEmpty)
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _confirmPasswordError,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    const SizedBox(height: 30),
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18))
                      ),

                      child: ElevatedButton(
                        style: ButtonStyle(
                          
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF5C955D)),),
                         onPressed: () {
                          islogin.value = false;
                          registerController.registerWithEmail();
                         }
                        ,
                        child: const Text('Register'),
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}