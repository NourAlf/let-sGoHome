import 'package:flutter/material.dart';
import 'package:letsgohome/component/evelatedbutton_set.dart';
import 'package:letsgohome/screens/notification_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Column(

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
                      "Settings",
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
                          Icons.edit_outlined,
                          size: 23,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20),
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
                  Icon(Icons.settings),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff1C680F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButtonWidget(image: 'bell.png', text: "Notification",onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NotificationPage()));
            },),
            //ElevatedButtonWidget(image: 'addstudent.png', text: "Add New Student",),
            ElevatedButtonWidget(image: 'language.png', text: "Language",onPressed: (){
              showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: const Text('Select Language'),
    content: DropdownButton<String>(
    value: selectedLanguage,
    onChanged: (String? newValue) {
    setState(() {
    selectedLanguage = newValue;
    });
    },
    items: <String>['Arabic', 'English']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    ),
    actions: <Widget>[
    TextButton(
    child: const Text('OK'),
    onPressed: () {
    Navigator.of(context).pop();
    },
    ),
    ],
    );});},),

            ElevatedButtonWidget(image: 'modify.png', text: "Edit information",onPressed: (){},),
            ElevatedButtonWidget(image: 'SD.png', text: "Location",onPressed: (){},),
            ElevatedButtonWidget(image: 'about.png', text: "About",onPressed: (){},),



          ],
        ),


    );
  }
}
