import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                    "Notification",
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
            child: ListView(

              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
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
                              "Unread",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff1C680F),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(Icons.numbers, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 60),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 40,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2D4B0),
                          ),
                          child: Image.asset("assets/bell.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              title: Text(
                                "My School",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C680F),
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "The student don't allowed to leave the school \n for "
                                    ""
                                    "unnecessry ,The student don't allowed to leave the school \n for unnecessry reasons",
                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2D4B0),
                          ),
                          child: Image.asset("assets/bell.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              title: Text(
                                "My School",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C680F),
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "The student don't allowed to leave the school \n for "
                                    ""
                                    "unnecessry ,The student don't allowed to leave the school \n for unnecessry reasons",
                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2D4B0),
                          ),
                          child: Image.asset("assets/bell.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              title: Text(
                                "My School",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C680F),
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "The student don't allowed to leave the school \n for "
                                    ""
                                    "unnecessry ,The student don't allowed to leave the school \n for unnecessry reasons",
                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2D4B0),
                          ),
                          child: Image.asset("assets/bell.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              title: Text(
                                "My School",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C680F),
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "The student don't allowed to leave the school \n for "
                                    ""
                                    "unnecessry ,The student don't allowed to leave the school \n for unnecessry reasons",
                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2D4B0),
                          ),
                          child: Image.asset("assets/bell.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              title: Text(
                                "My School",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C680F),
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "The student don't allowed to leave the school \n for "
                                    ""
                                    "unnecessry ,The student don't allowed to leave the school \n for unnecessry reasons",
                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2D4B0),
                          ),
                          child: Image.asset("assets/bell.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              title: Text(
                                "My School",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C680F),
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "The student don't allowed to leave the school \n for "
                                    ""
                                    "unnecessry ,The student don't allowed to leave the school \n for unnecessry reasons",
                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 18,
                                ),overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
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
      ),
    );
  }
}