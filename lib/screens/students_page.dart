import 'package:flutter/material.dart';
import 'package:letsgohome/screens/home_nav_bar.dart';
import 'package:letsgohome/screens/newstudent_page.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [Container(
              height: 200,
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
                top: 20,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  },
                  icon: Icon(Icons.arrow_back),
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
                top: 40,
                left: 50,
                right: 50,
                child: Center(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 130,
                left: 27,
                child: Text(
                  "Menu of Students",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: 27,
                child: Text(
                  "You can choose the student if you have more than one child",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ]
          ),
          SizedBox(height: 10,),
          Container(
            //padding: EdgeInsets.all(3),
            width: 307,
            height: 350,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),

            ),
            child: Center(
              child: ListView(

                children:[
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeNavigation() ));
                    }
                    ,
                    child: Container(

                    margin: EdgeInsets.only(top: 1,left: 30,right: 30),
                 // width: 10,
                    height: 50,
                    decoration: BoxDecoration(
                      color:  Color(0xffC7C7C7),
                      borderRadius: BorderRadius.all(Radius.circular(8)),

                    ),
                    child: OutlinedButton(
                      onPressed: () {
                      },
                      style: OutlinedButton.styleFrom(
                        primary:  Color(0xFF5C955D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/student.png', width: 20, height: 20),
                        title: Text("First Student",style: TextStyle(),),
                      ),
                    ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(

                    margin: EdgeInsets.only(top: 1,left: 30,right: 30),
                    // width: 10,
                    height: 50,
                    decoration: BoxDecoration(
                      color:  Color(0xffC7C7C7),
                      borderRadius: BorderRadius.all(Radius.circular(8)),

                    ),
                    child: OutlinedButton(
                      onPressed: () {
                      },
                      style: OutlinedButton.styleFrom(
                        primary:  Color(0xFF5C955D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/student.png', width: 20, height: 20),
                        title: Text("First Student",style: TextStyle(),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(

                    margin: EdgeInsets.only(top: 1,left: 30,right: 30),
                    // width: 10,
                    height: 50,
                    decoration: BoxDecoration(
                      color:  Color(0xffC7C7C7),
                      borderRadius: BorderRadius.all(Radius.circular(8)),

                    ),
                    child: OutlinedButton(
                      onPressed: () {
                      },
                      style: OutlinedButton.styleFrom(
                        primary:  Color(0xFF5C955D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/student.png', width: 20, height: 20),
                        title: Text("First Student",style: TextStyle(),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(

                    margin: EdgeInsets.only(top: 1,left: 30,right: 30),
                    // width: 10,
                    height: 50,
                    decoration: BoxDecoration(
                      color:  Color(0xffC7C7C7),
                      borderRadius: BorderRadius.all(Radius.circular(8)),

                    ),
                    child: OutlinedButton(
                      onPressed: () {
                      },
                      style: OutlinedButton.styleFrom(
                        primary:  Color(0xFF5C955D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/student.png', width: 20, height: 20),
                        title: Text("First Student",style: TextStyle(),),
                      ),
                    ),
                  ),



                ]
              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF5C955D),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
            ),
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddStudent()));

              },
              style: OutlinedButton.styleFrom(
                primary:  Color(0xFF5C955D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Add Student",style: TextStyle(
                  fontSize: 20
                  , fontWeight:FontWeight.bold, color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}

