import 'package:flutter/material.dart';
import 'package:letsgohome/component/grid-view.dart';
import 'package:letsgohome/screens/call.dart';
import 'package:letsgohome/screens/tracking_page.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  _HomeNavigationState createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  // Function to handle user input changes
  void onTimeChanged(String value) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 129,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF5C955D),
                    borderRadius: BorderRadius.only(
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
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 50,
                  right: 50,
                  child: Center(
                    child: Text(
                      "Student's Info",
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          // MaterialPageRoute(builder: (context) => HomePage()),
                          // );
                        },
                        icon: Icon(
                          Icons.add_alert_sharp,
                          size: 23,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to App...",
                    style: TextStyle(
                      color: Color(0xff1C680F),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      padding: EdgeInsets.all(10),
                      height: 44,
                      width: 211,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xffE2D4B0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.calendar_today_outlined),
                          Text(
                            "Daily Report",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff1C680F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 325,
                    height: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF5C955D),
                          Color(0xFF1C680F),
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topCenter,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    padding: EdgeInsets.all(10),
                    height: 44,
                    width: 211,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xffE2D4B0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.business_center_outlined),
                        Text(
                          "All Services",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff1C680F),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
           //   crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                CustomContainer(text: "Health Status", image: 'heart.png',onPressed: (){
                  Navigator.of(context).pushReplacementNamed('heaithstatus');
                },) ,
                CustomContainer(text: 'Permission', image: 'access.png',onPressed: (){

                },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                CustomContainer(text: "Tracking", image: 'SD.png',onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TrackingPage()));},),
                CustomContainer(text: 'Call', image: 'alarm.png',onPressed: (){
                //   showDialog(
                //   context: context,
                //   builder: (BuildContext context) {
                //     return AlertDialog(
                //       title: const Text('Request Sent'),
                //       content: const Text('The request to your child has been sent.'),
                //       actions: <Widget>[
                //         TextButton(
                //           child: const Text('OK'),
                //           onPressed: () {
                //
                //           },
                //         ),
                //       ],
                //     );
                //   },
                // )
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CallPage()))
                  ;},),
              ],
            ),

            // Gridview(image: ['assets/SD.png','assets/SD.png','assets/SD.png','assets/SD.png'],
            //   text: ["Health Status"," Permission","Tracking","Early leave"],)
          ],
        ),
      ),
    );
  }
}