import 'package:ayucure/pages/Cart.dart';
import 'package:ayucure/pages/CreateAccount.dart';
import 'package:ayucure/pages/Product_detail.dart';
import 'package:ayucure/pages/home.dart';
import 'package:ayucure/pages/login.dart';
import 'package:ayucure/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Test_Pages/gridtest_1.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/':(context)=>HomePage(),
        'c':(context)=>Createaccount(),
        'p':(context)=>Login(),
        'o':(context)=>Product_detail(),
        'i':(context)=>Cart(),
        'k':(context)=>test(),
      }
    )
    );
  }
}


