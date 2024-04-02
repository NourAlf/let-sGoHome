import 'package:flutter/material.dart';

class Container_Heath extends StatelessWidget {
  final String image;
  final String toptext;
  final int numb;

  const Container_Heath({
    Key? key,
    required this.image,
    required this.toptext,
    required this.numb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(11),
      child: Container(
        color: Colors.white,
        height: 50,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                toptext,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/$image",
                  height: 50,
                  width: 50,
                ),
                Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFFC4C4C4),
                  ),
                  child: Center(
                    child: Text(
                      "$numb",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1C680F),
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}