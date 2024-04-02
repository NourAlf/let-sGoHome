import 'package:flutter/material.dart';
import 'package:letsgohome/component/textformfield_ns.dart';
class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
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
                    "Call",
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
                        Icons.add_alert,
                        size: 23,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10,),
            child: Container(


              margin: EdgeInsets.only(left: 10),
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
                  Text(
                    "Please fill out this report:",
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
          SizedBox(height: 20,),
          
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 300,
                  height: 500,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30),
                  ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(76, 149, 91, 0.5), // لون أخضر فاتح
                        Color.fromRGBO(28, 104, 15, 1), // لون أخضر داكن
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.centerLeft,
                    ),),
                  child: ListView(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          //padding: EdgeInsets.only(left: 8,top: 8),
                          width: 250, // Adjust the width as needed
                          height: 100,
                          margin: EdgeInsets.only(top: 8),
                          child: TextFormField(
                            maxLines: 10,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.note_alt_rounded, color: Colors.black),
                              labelText: "Cause leave",
                              filled: true,
                              fillColor: Colors.white, // Set background color to white
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.grey, width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.black54, width: 2.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.red, width: 2.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.red, width: 2.0),
                              ),
                              errorStyle: TextStyle(color: Colors.black54),
                              errorMaxLines: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomTextField(prefixIcon: Icons.alarm,labelText: "Depature hour"),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomTextField(prefixIcon: Icons.attach_file,labelText: "Attach file/photo",),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(

                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          child: OutlinedButton(
                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));

                            },
                            style: OutlinedButton.styleFrom(
                              primary:  Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text("Save",style: TextStyle(
                                fontSize: 20
                                , fontWeight:FontWeight.bold, color: Color(0xFF5C955D)),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      )

    ,
    );
  }
}
