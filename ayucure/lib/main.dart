import 'package:ayucure/pages/Cart.dart';
import 'package:ayucure/pages/CreateAccount.dart';
import 'package:ayucure/pages/Product_detail.dart';
import 'package:ayucure/pages/home.dart';
import 'package:ayucure/pages/login.dart';
import 'package:ayucure/pages/splash.dart';
import 'package:flutter/material.dart';
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
        'h':(context)=>HomePage(),
        'c':(context)=>Createaccount(),
        'p':(context)=>Login(),
        'l':(context)=>Product_detail(),
        '/':(context)=>Cart(),
      }
    )
    );
  }
}


