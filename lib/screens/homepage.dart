import 'package:flutter/material.dart';
import 'package:letsgohome/screens/login_page.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //margin: EdgeInsets.all(20),
            height: 430,
            // width:  360,
            decoration: BoxDecoration(
              color:  Color(0xFF5C955D),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child:   Center(
              child: Container(
                // alignment: Alignment.,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
            ),

          ),


          Center(

            child: Container(
              margin: EdgeInsets.only(top: 310,left: 27,right: 27),

              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Welcome to App ...",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("You must log in to join our service"),
                  SizedBox(height: 30),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));

                      },
                      style: OutlinedButton.styleFrom(
                        primary:  Color(0xFF5C955D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("Login",style: TextStyle(
                          fontSize: 20
                          , fontWeight:FontWeight.bold, color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 30),
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
                        Navigator.of(context).pushReplacementNamed('SignUp');
                      },
                      style: OutlinedButton.styleFrom(
                        primary:  Color(0xFF5C955D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("Register",style: TextStyle(
                          fontSize: 20
                          , fontWeight:FontWeight.bold, color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}