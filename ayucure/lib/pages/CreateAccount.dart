import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: RadialGradient(colors: [Color(0xFF30cfd0),Color(0xFF330867)],radius: 1)),
        child: Container(
          width: width,
          height: 500,
          padding: EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('We\'re Glad To Have You Here !',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: 40,),

                )
              ],
            ),
        ),
      ),

    );
  }
}