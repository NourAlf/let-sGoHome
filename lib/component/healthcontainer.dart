import 'package:flutter/material.dart';

class HealthContainer extends StatelessWidget {
  final String toptext;
  final String image;
  final int numb;

  const HealthContainer({
    Key? key,
    required this.toptext,
    required this.image,
    required this.numb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 160,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            toptext,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

               // Use the Spacer widget to expand the space between widgets
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFC4C4C4),
                ),
                child: Center(
                  child: Text(
                    "$numb",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1C680F),
                      fontSize: 22,
                    ),
                  ),
                ),
              ),

              Image.asset(
                "assets/$image",
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}