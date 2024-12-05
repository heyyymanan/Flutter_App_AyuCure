import 'package:ayucure/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Homepage();
}
class Homepage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Ayu Cure',style: GoogleFonts.corinthia(textStyle:TextStyle(color: Colors.white,fontSize: 40))),
            backgroundColor: Colors.black),
        body: Column(
          children: [
            Container(height: 50,width:400 , margin: EdgeInsets.only(right: 15, left:15, top: 20),
                decoration: BoxDecoration(color: Color(0xffEBE0FF),borderRadius: BorderRadius.circular(30) ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [TextButton(
                        onPressed: (){}, child: Icon(Icons.search,size: 30,color: Colors.black,)),
                      Expanded(flex:5,child: TextField(decoration: InputDecoration(border: InputBorder.none),)),
                      Text("|",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                      Expanded(flex:1,child: TextButton(onPressed: (){},child: Icon(Icons.filter_list,size: 30))),
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
                    ])),
            SizedBox(height: 15,),
            Container(margin: EdgeInsets.only(left: 25,right: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: Text('Special For You',style: GoogleFonts.tinos(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))),
                  TextButton(onPressed: (){}, child: Text('See all'))],
              ),
            ),
            SizedBox(height: 10,),
            // SingleChildScrollView(
            //   child: GridView.count(crossAxisCount:5,children:[
            //     Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),width: 150,height: 150),
            //     Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),width: 150,height: 150),
            //   ]),
            // )






          ],)



    );
  }
}