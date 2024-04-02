import 'package:flutter/material.dart';
import 'package:letsgohome/component/evelatedbutton_set.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 129,
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
                top: 30,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    // MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              Positioned(
                top: 40,
                left: 50,
                right: 50,
                child: Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 20,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      // MaterialPageRoute(builder: (context) => HomePage()),
                      // );
                    },
                    icon: const Icon(
                      Icons.edit_outlined,
                      size: 23,
                    ),
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 50, // Adjust the radius as per your desired size
                backgroundImage: AssetImage('assets/student.jpg'), // Replace 'assets/SD.jpg' with your image path
              ),
              title: const Text(
                "Nour",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              subtitle: const Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          ElevatedButtonWidget(image: 'modify.png', text: "Edit Information",onPressed:(){} ,),
          ElevatedButtonWidget(image: 'language.png', text: "Language",onPressed: (){

          },),
          ElevatedButtonWidget(image: 'logout.png', text: "Logout",onPressed: (){},),
        ],
      ),
    );
  }
}