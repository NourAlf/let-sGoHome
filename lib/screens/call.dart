import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../component/textformfield_ns.dart';

class CallPage extends StatefulWidget {
  String? std_id ;
   CallPage({Key? key, this.std_id}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  TextEditingController depcontroll = TextEditingController();
  TextEditingController attachController = TextEditingController();
  TextEditingController reason = TextEditingController();

  Future<void> sendData() async {
    print(widget.std_id);
    // API endpoint URL
    var url = Uri.parse('https://present-ksa.com/api/earlycall');
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    String token = prefs.getString('token')!;
    print('widget.std_id: ${widget.std_id}');
    // Request body
    var requestBody = {
      'id': widget.std_id,
      'leaving_time': depcontroll.text,
      'reason': reason.text ,
      'document': attachController.text,
    };
    print('requestBody: $requestBody');

    // Send POST request
    var response = await http.post(url, body: requestBody,
      headers: <String, String>{
        // 'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    print(requestBody);
    print(response.statusCode);
    // Check if request was successful
    if (response.statusCode == 200) {
      // Handle success
      print('Request successful');
    } else {
      // Handle error
      print('Request failed with status: ${response.statusCode}');
    }
  }

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
                  onPressed: () {},
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
                      onPressed: () {},
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
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 300,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(76, 149, 91, 0.5),
                        Color.fromRGBO(28, 104, 15, 1),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: ListView(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 250,
                          height: 100,
                          margin: EdgeInsets.only(top: 8),
                          child: TextFormField(
                            controller: reason,
                            maxLines: 10,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.note_alt_rounded, color: Colors.black),
                              labelText: "Cause leave",
                              filled: true,
                              fillColor: Colors.white,
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
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomTextField(
                          prefixIcon: Icons.alarm,
                          labelText: "Depature hour",
                          controller: depcontroll,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomTextField(
                          prefixIcon: Icons.attach_file,
                          labelText: "Attach file/photo",
                          controller: attachController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
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
                              print("resppppons");
                              sendData();
                            },
                            style: OutlinedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              "Save",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF5C955D)),
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
