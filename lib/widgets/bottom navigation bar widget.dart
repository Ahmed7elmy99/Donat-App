import 'package:flutter/material.dart';

import '../donat form.dart';
import '../donors_page.dart';
import '../home_page.dart';
import '../location_page.dart';
import '../logupscreen.dart';
import '../profile_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 0;

  final List<Widget> Pages= [
    HomePage(),
    BloodDonorForm(),
    //ProfileScreen(),
    locationPage(),
    DonersPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
         unselectedItemColor: Color(0xffFEBCBE),
          selectedItemColor: Color(0xffF15C62),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'DonatForm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.man_2_rounded),
            label: 'Doners',
          ),
        ],
      ),
    );
  }
}
