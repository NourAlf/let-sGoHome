import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String labelText;




  const CustomTextField({
    Key? key,
    required this.prefixIcon,
    required this.labelText,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      margin: EdgeInsets.only(top:8),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon,color: Colors.black,),
          labelText: labelText,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color:Colors.grey, width: 2.0),
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
         // contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),

        ),
      ),
    );
  }
}