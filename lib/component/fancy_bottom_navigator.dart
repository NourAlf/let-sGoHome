import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:letsgohome/screens/home_nav_bar.dart';
import 'package:letsgohome/screens/profile.dart';
import 'package:letsgohome/screens/settingsPage.dart';

import '../screens/students_page.dart';

class CustomFancyBottomNavigation extends StatefulWidget {
  @override
  _CustomFancyBottomNavigationState createState() =>
      _CustomFancyBottomNavigationState();
}

class _CustomFancyBottomNavigationState
    extends State<CustomFancyBottomNavigation> {
  int _currentIndex = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  final List<Widget> _pages =
  [
    SettingsPage(),

    StudentsPage(),
    HomeNavigation(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items:[

          Icon(Icons.settings, size: 30,color: Colors.white),
          Icon(Icons.home, size: 30,color: Colors.white,),
          Icon(Icons.info, size: 30,color: Colors.white,),
          Icon(Icons.person, size: 30,color: Colors.white),],

        onTap:  (position) {
          setState(() {
            _currentIndex = position;
          });
        },
        index: _currentIndex,
        key: bottomNavigationKey,
        height: 70,
        backgroundColor: Colors.white,
        color: Color(0xFF5C955D),
        animationDuration: const Duration(milliseconds: 60),
      ),
    );
  }
}

