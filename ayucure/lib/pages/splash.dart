import 'package:ayucure/pages/home.dart';
import 'package:ayucure/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
     super.initState();
    // Navigate to main screen after delay
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
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
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'AyuCure',
                      textStyle: GoogleFonts.corinthia(textStyle: TextStyle(fontSize: 100,color: Colors.white)),
                      speed: Duration(milliseconds: 50),
                    ),
                  ],
                  totalRepeatCount: 1, // Repeat once
                ),
              ],
            )),


          ],
        ),
      ),
    );

  }
}