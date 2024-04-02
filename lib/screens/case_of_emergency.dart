import 'package:flutter/material.dart';

class CaseOfEmergency extends StatefulWidget {
  const CaseOfEmergency({Key? key}) : super(key: key);

  @override
  State<CaseOfEmergency> createState() => _CaseOfEmergencyState();
}

class _CaseOfEmergencyState extends State<CaseOfEmergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                    "Case Of Emergency",
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
            padding: const EdgeInsets.only(left: 10, top: 10),
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
                    "case of emergency",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff1C680F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.phone_bluetooth_speaker_rounded,
                    color: Colors.black,
                    size: 32,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFF5C955D),
                width: 6.0,
              ),
            ),
            child: Image.asset(
              'assets/student.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10,),
          Text("Nour Alfarwie " ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
          Text("nouralfarwie@gmail.com " ,style: TextStyle(color: Colors.black),),
          SizedBox(height: 10,),
          Container(
            width: 300,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient:  LinearGradient(
    colors: [
    Color.fromRGBO(76, 149, 91, 0.5), // لون أخضر فاتح
    Color.fromRGBO(28, 104, 15, 1), // لون أخضر داكن
    ],
    begin: Alignment.bottomRight,
    end: Alignment.centerLeft,
    ),),
            child: ListView(
            //  crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Container(

                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: 250,
                  height: 82,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(13))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Emergency number",style: TextStyle(fontWeight: FontWeight.bold,fontSize:14),),
                    Row(children: [
                      Icon(Icons.phone,size: 26,color: Colors.black,),
                      SizedBox(width: 5,),
                      GestureDetector(child: Text("0934567775",style: TextStyle(fontSize: 18,color: Colors.green),),),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_left,size: 29,))
                    ],)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: 250,height: 84,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("The Line",style: TextStyle(fontWeight: FontWeight.bold,fontSize:14),),
                  Row(children: [
                    Image.asset('assets/line.png',height: 40),

                    Spacer(),
                    Container(width: 70,height: 35,
                    decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.red),
                    child: Center(child: Text("Number")),)
                  ],)
                ],),
                
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: 250,height: 84,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("The Role",style: TextStyle(fontWeight: FontWeight.bold,fontSize:14),),
                      Row(children: [
                        Image.asset('assets/line.png',height: 40),

                        Spacer(),
                        Container(width: 70,height: 35,
                          decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.red),
                          child: Center(child: Text("Number")),)
                      ],)
                    ],),

                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: 250,height: 84,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dvision",style: TextStyle(fontWeight: FontWeight.bold,fontSize:14),),
                      Row(children: [
                        Image.asset('assets/line.png',height: 40),

                        Spacer(),
                        Container(width: 70,height: 35,
                          decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.red),
                          child: Center(child: Text("Number")),)
                      ],)
                    ],),

                ),
              ],
            ),
            

            ),

        ],
      ),
    );
  }
}