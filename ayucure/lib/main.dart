import 'package:ayucure/pages/CreateAccount.dart';
import 'package:ayucure/pages/home.dart';
import 'package:ayucure/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Test_Pages/gridtest_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AyuCure',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        'h':(context)=>MyHomePage(),
        '/':(context)=>RegisterPage(),
        'l':(context)=>Login(),
        't':(context)=>Test(),
      }
    )
    );
  }
}


