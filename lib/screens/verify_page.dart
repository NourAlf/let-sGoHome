import 'package:flutter/material.dart';
import 'package:letsgohome/screens/homepage.dart';
class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 390,
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
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
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
            top: 130,
            left: 27,
            child: Text(
              "Verify Your Email",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 27,
            child: Text(
              "Please enter the code sent ",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xffE2D4B0),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  'assets/outline_email-lock.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 27,
            right: 27,
            child:  Center(
                child:Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 250,
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(

                          decoration: InputDecoration(

                            hintText: 'Enter the code here',
                            hintStyle: TextStyle(color:Colors.grey),
                            border: InputBorder.none,
                           // prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                            Navigator.of(context).pushReplacementNamed('ResetPassword');

                          },
                          style: OutlinedButton.styleFrom(
                            primary:  Color(0xFF5C955D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text("Verify",style: TextStyle(
                              fontSize: 20
                              , fontWeight:FontWeight.bold, color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                          onTap: (){
                          //  Navigator.of(context).pushReplacementNamed('Verify');
                          },
                          child: Center(
                              child:
                              Text("Resend Code",
                                style: TextStyle(fontSize: 16, color: Color(0xFF5C955D),decoration: TextDecoration.underline,),)))
                    ],
                  ),
                )
            ),),

        ],
      ),
    );
  }
}
