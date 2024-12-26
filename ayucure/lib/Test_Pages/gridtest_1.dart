import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ayucure/functions/navigator.dart';
import 'package:ayucure/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  void _showBottomSheet(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "This is your $title screen.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Close"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          // SizedBox(height: 100),
          Container(
            // color: Colors.red,
              width: double.infinity,
              height: 400,
              child: Image.asset('assets/media/girlyoga1.png')),

          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            child: AnimatedTextKit(
              isRepeatingAnimation: true,
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                    speed: Duration(milliseconds: 100),
                    'Welcome To',
                    textStyle: GoogleFonts.corinthia(
                        textStyle: TextStyle(fontSize: 100))),
                TyperAnimatedText(
                    speed: Duration(milliseconds: 100),
                    'AyuCure',
                    textStyle: GoogleFonts.corinthia(
                        textStyle: TextStyle(fontSize: 100)))
              ],),),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () => _showBottomSheet(context, "Sign Up"),
                  child: Text('Login',style: TextStyle(fontSize: 30),),
              style: ElevatedButton.styleFrom(elevation: 10,side: BorderSide(width: 1))
              ),
              SizedBox(width: 40),
              ElevatedButton(onPressed: (){navigateTo(context, Login());},
                  child: Text('Sign Up',style: TextStyle(fontSize: 30),),
                  style: ElevatedButton.styleFrom(elevation: 10,side: BorderSide(width: 1))
              ),
            ],
          )
        ],
      ),
    );
  }
}
