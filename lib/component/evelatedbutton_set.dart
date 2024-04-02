import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;

  const ElevatedButtonWidget({Key? key, required this.image, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 10,bottom:20 ),
      width: 300,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/$image',
                  width: 20,
                  height: 20,
                ),
              ),
              SizedBox(width: 18.0),
              Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(color: Colors.grey, width: 2.0),
          ),
          overlayColor: MaterialStateProperty.all<Color>(Colors.black54),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
      ),
    );
  }
}