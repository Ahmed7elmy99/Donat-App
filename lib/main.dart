import 'package:flutter/material.dart';
import 'package:test3/home_page.dart';

import 'donat form.dart';
import 'donors_page.dart';

import 'login_page.dart';
import 'logupscreen.dart';
import 'profile_page.dart';
import 'widgets/bottom navigation bar widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Tajawal"),
     // home:BloodDonorForm(),
      
      //home: HomePage(),
      //home: DonersPage(),
      //home: LogupScreen(),
      //home:ProfileScreen(),
     // home:LoginScreen(),
      home:MyBottomNavigationBar(),
    );
  }
}

