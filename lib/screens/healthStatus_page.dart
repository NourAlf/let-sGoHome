import 'package:flutter/material.dart';
import 'package:letsgohome/component/healthcontainer.dart';

class HeathStatus extends StatefulWidget {
  const HeathStatus({Key? key}) : super(key: key);

  @override
  State<HeathStatus> createState() => _HeathStatusState();
}

class _HeathStatusState extends State<HeathStatus> {
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
                    "Health Status",
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
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(20),
                    children: [
                      HealthContainer(toptext: "Heart Beats", image: 'beats.png', numb: 99),
                      HealthContainer(toptext: "Height", image: 'height.png', numb: 37),
                      HealthContainer(toptext: "Temperature", image: 'temp.png', numb: 37),
                      HealthContainer(toptext: "Age", image: 'age.png', numb: 11),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                      //  margin: EdgeInsets.only(left: 5),
                      //  padding: EdgeInsets.all(10),
                        height: 44,
                        width: 211,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xffE2D4B0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.file_copy_outlined),
                            Text(
                              "Stusent's health file",
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


                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}