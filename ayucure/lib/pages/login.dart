import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name="";
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFF582F0E),
        body: Column(
          children: [
            Container(
              child: Stack(
                children:[
                  Container(
                  padding: EdgeInsets.only(right: 0,left: 0,top: 0),
                  height: (height/100)*75,
                  width: width,
                  child: ClipRRect(
                          borderRadius:BorderRadius.only(bottomRight:Radius.circular(60),
                              bottomLeft:Radius.circular(60) ),
                          child: Image.asset('assets/media/12.1.jpg', fit: BoxFit.fill)),
                ),
                  Positioned(
                    left: ((width/2)/100)*65,
                    right: ((width/2)/100)*35,
                    top: (height/100)*10,
                    child: Text('Welcome To,',style: GoogleFonts.elsie(
                        textStyle: TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Colors.white,fontSize: width/15)),),
                  ),Positioned(
                    left: ((width/2)/100)*25,
                    right: ((width/2)/100)*25,
                    top: (height/100)*15,
                    child: Center(
                      child: Text('AyuCure',style: GoogleFonts.corinthia(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,fontSize: width/4.6)),),
                    ),
                  ),
                  Positioned(
                    left: ((width/2)/100)*10,
                    right: ((width/2)/100)*10,
                    top: (height/100)*57,
                    child: Center(
                      child: Text('Have We Met',style: GoogleFonts.elsie(
                          textStyle: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: width/8)),),
                    ),
                  ),
                  Positioned(
                    left: ((width/2)/100)*10,
                    right: ((width/2)/100)*10,
                    top: (height/100)*65,
                    child: Center(
                      child: Text('Before ?',style: GoogleFonts.elsie(
                          textStyle: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: width/9)),),
                    ),
                  )
                ]),
            ),
          Container(
            width: width,
            height: (height/100)*25,
            child: Container()
          ),


          ],
        ));

  }
}