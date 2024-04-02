import 'package:flutter/material.dart';
import 'package:letsgohome/screens/login_page.dart';
import 'package:letsgohome/screens/verify_page.dart';


class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
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
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage()),
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
                "Forget password",
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
                "Please enter your email address to receive a verification code",
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
                      'assets/forgot-password.png',
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
                 child: Form(
                   key: _formKey,
                   child: Column(
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
                         child: TextFormField(
                           keyboardType: TextInputType.emailAddress ,
                           decoration: InputDecoration(

                             hintText: 'Your Email',
                             hintStyle: TextStyle(color:Colors.grey),
                             border: InputBorder.none,
                             prefixIcon: Icon(Icons.email),
                           ),
                           validator: (value) {
                             if (value?.isEmpty ?? true) {
                               return 'Email is required';
                             } else if (!value!.contains('@')) {
                               return 'Invalid email address , should contain( @ )';
                             }
                             return null;
                           },
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
                             if (_formKey.currentState?.validate() == true) {
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerifyPage()));
                             } else {

                               // Handle form validation error or display an error message
                             }
                           },
                           style: OutlinedButton.styleFrom(
                             primary:  Color(0xFF5C955D),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(8),
                             ),
                           ),
                           child: Text("Send",style: TextStyle(
                               fontSize: 20
                               , fontWeight:FontWeight.bold, color: Colors.white),),
                         ),
                       ),
                       SizedBox(height: 20,),
                       GestureDetector(
                           onTap: (){
                              Navigator.of(context).pushReplacementNamed('Verify');
                           },
                           child: Center(
                               child:
                               Text("Try another way",
                                 style: TextStyle(fontSize: 16, color: Color(0xFF5C955D),decoration: TextDecoration.underline,),)))
                     ],
                   ),
                 ),
               )
             ),),
            SizedBox(height: 20,),

          ],
      ),

       );

  }
}