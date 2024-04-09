import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:letsgohome/screens/home_nav_bar.dart';
import 'package:letsgohome/screens/newstudent_page.dart';

import '../controller/login_controller.dart';
import '../utils/api_endpoints.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  String? parentId;
  List<String> children = [];

  @override
  void initState() {
    super.initState();
    fetchChildrenData();
  }

  Future<String?> getParentId(String username, String password) async {
    final String loginUrl = ApiEndPoints.baseUrl + ApiEndPoints.auth.loginEmail;
    Map<String, String> body = {
      'email': LoginController().emailController.text.trim(),
      'password': LoginController().passwordController.text.trim(),
    };

    try {
      final response = await http.post(Uri.parse(loginUrl), body: body);

      if (response.statusCode == 302) {
        final redirectUrl = response.headers['location'];
        print('Redirect URL: $redirectUrl');
        // Handle redirection
        return await getParentIdAfterRedirection(redirectUrl!);
      } else if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return data['id'];
      } else {
        throw Exception('Failed to authenticate user. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching parent ID: $e');
      return null;
    }
  }

  Future<String?> getParentIdAfterRedirection(String redirectUrl) async {
    try {
      final response = await http.get(Uri.parse(redirectUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return data['id'];
      } else {
        throw Exception('Failed to authenticate user after redirection. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching parent ID after redirection: $e');
      return null;
    }
  }

  Future<List<String>> getChildren(String parentId) async {
    final String childrenUrl = ApiEndPoints.baseUrl + ApiEndPoints.auth.parent_children;

    try {
      final response = await http.get(Uri.parse('$childrenUrl/$parentId'));

      if (response.statusCode == 200) {
        final List<dynamic> childrenData = json.decode(response.body);
        return childrenData.map((child) => child['name'] as String).toList();
      } else {
        throw Exception('Failed to fetch children');
      }
    } catch (e) {
      print('Error fetching children: $e');
      return [];
    }
  }

  void fetchChildrenData() async {
    final String username = LoginController().emailController.text.trim();
    final String password = LoginController().passwordController.text.trim();

    parentId = await getParentId(username, password);

    if (parentId != null) {
      final List<String> fetchedChildren = await getChildren(parentId!);
      setState(() {
        children = fetchedChildren;
      });

      if (children.isEmpty) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('No Children Found'),
              content: Text('You do not have any children in the schools.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Authentication Failed'),
            content: Text('Failed to authenticate user. Please check your credentials.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
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
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 307,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Center(
              child: ListView.builder(
                itemCount: children.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffC7C7C7),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        primary: Color(0xFF5C955D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/student.png', width: 20, height: 20),
                        title: Text(children[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 40),
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddStudentPage()));
              },
              style: OutlinedButton.styleFrom(
                primary: Color(0xFF5C955D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Add Student",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
