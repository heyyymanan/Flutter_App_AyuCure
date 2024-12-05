import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Homepage_state();
}

class Homepage_state extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('AyuCure',style: GoogleFonts.corinthia(textStyle: TextStyle(color: Colors.white))),
            backgroundColor: Colors.black),
        body: Column(
          children: [
            Container(height: 50,width:400 , margin: EdgeInsets.only(right: 15, left:15, top: 20),
            decoration: BoxDecoration(color: Color(0xffEBE0FF),borderRadius: BorderRadius.circular(30) ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [TextButton(
                  onPressed: (){}, child: Icon(Icons.search,size: 30,color: Colors.black,)),
                Expanded(flex:6,child: TextField(decoration: InputDecoration(border: InputBorder.none),)),
                    Text("|",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                    Expanded(flex:1,child: Icon(Icons.filter_list,size: 30)),
                  ])),
            SizedBox(height: 30),
            Container(
                      width: 375, // Set the width of the container
                      height: 180, // Set the height of the container
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), // Round the edges
                      image: DecorationImage(
                      image: AssetImage('assets/SaleBanner.jpg'), // Replace with your image asset path
                      fit: BoxFit.cover, // Adjust the image fit
                      ))),
            SizedBox(height: 30),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child:Row(
              children: [
                SizedBox(width:20),
                  OutlinedButton(onPressed: (){}, child: Text("All")),
                  SizedBox(width:10),
                  OutlinedButton(onPressed: (){}, child: Text("Joints")),
                SizedBox(width:10),
                  OutlinedButton(onPressed: (){}, child: Text("Tonics")),
                SizedBox(width:10),
                  OutlinedButton(onPressed: (){}, child: Text("Immunity")),
                SizedBox(width:10),
                  OutlinedButton(onPressed: (){}, child: Text("Muscle")),

                ])
              ),





          ],)



        );
  }
}
