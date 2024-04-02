import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String? text;
  final String? image;
  final VoidCallback onPressed;

  const CustomContainer({Key? key, required this.text, required this.image, required this.onPressed})
      : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.all(15),
        width: 140,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/${widget.image}',
            ),
            SizedBox(height: 10),
            Text("${widget.text}"),
          ],
        ),
      ),
    );
  }
}