import 'package:flutter/material.dart';

class CustomTextFieldDrop extends StatelessWidget {
  final IconData prefixIcon;
  //final IconData suffixIcon;
  final String labelText;
  final VoidCallback onPressed;


  const CustomTextFieldDrop({
    required this.prefixIcon,
   // required this.suffixIcon,
    required this.labelText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      margin: EdgeInsets.only(top: 8),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: Icon(prefixIcon, color: Colors.black),
            onPressed: onPressed,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.arrow_left, color: Colors.black,size: 40,),
            onPressed: onPressed
          ),
          labelText: labelText,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black54, width: 2.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
          errorStyle: TextStyle(color: Colors.black54),
          errorMaxLines: 2,
        ),
      ),
    );
  }
}