import 'package:ayucure/pages/home.dart';
import 'package:ayucure/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
     super.initState();
    // Navigate to main screen after delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 50,bottom: 50,left:25 ,right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
              children: [
                Image.asset('assets/logo/4.png'),
                SizedBox(height: 30),
                Text("From",style: GoogleFonts.corinthia(textStyle: TextStyle(fontSize: 50))),
                Text("ShreeJi Remedies",style: GoogleFonts.corinthia(textStyle: TextStyle(fontSize: 50))),

              ],
            )),


          ],
        ),
      ),
    );

  }
}