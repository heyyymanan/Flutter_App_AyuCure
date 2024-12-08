import 'package:ayucure/pages/CreateAccount.dart';
import 'package:ayucure/pages/home.dart';
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
        backgroundColor: Color(0xFF000000),
        body: SingleChildScrollView(
          child: Column(
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
                            child: Image.asset('assets/media/12.2.jpg', fit: BoxFit.fill)),
                  ),
                    Positioned(
                        top: (height)/100*5,
                        right: (width)/100*2,
                        child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }, child: Text('Skip >>',style: GoogleFonts.tinos(textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          fontWeight: FontWeight.bold
                        ))))),
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
                                fontSize: width/9)),),
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
              padding: EdgeInsets.all(10),
              width: width,
              height: (height/100)*25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton.icon(onPressed: (){},
                      label: Text('Continue With Google',style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                              fontSize: 25,
                              color: Colors.white))),
                      icon: Image.asset('assets/icons/Google.png'),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all(Size(width-70, 50)),
                        backgroundColor: WidgetStateProperty.all(Colors.transparent),
                      elevation: WidgetStateProperty.all(10),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      side: WidgetStateProperty.all(
                          BorderSide(width: 1.5,color: Colors.grey))
                      ),
                      ),OutlinedButton.icon(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Createaccount()));
                  },
                      label: Text('Create Account',style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                              fontSize: 25,
                              color: Colors.white))),
                      icon: FaIcon(Icons.account_circle,size: 40,color: Colors.white,),
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all(Size(width-120, 50)),
                        backgroundColor: WidgetStateProperty.all(Colors.brown),
                      elevation: WidgetStateProperty.all(10),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      side: WidgetStateProperty.all(
                          BorderSide(width: 1,color: Colors.brown))
                      ),
                      ),
                  ]
              )
            ),
          
          
            ],
          ),
        ));

  }
}