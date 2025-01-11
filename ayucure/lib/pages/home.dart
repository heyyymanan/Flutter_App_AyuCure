import 'package:ayucure/widgets/Category_filter.dart';
import 'package:ayucure/widgets/Home_drawer.dart';
import 'package:ayucure/widgets/Search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/product_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Homepage();
}
class Homepage extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Home_drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            title: Text('AyuCure',
                style: GoogleFonts.corinthia(
                    textStyle:TextStyle(color: Colors.white,fontSize: 45))),
            backgroundColor: Colors.black),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //SEARCH_BAR
              Search_bar(),//Custom

              //BANNER
              Container(
                margin: EdgeInsets.only(right:10 ,left:10,bottom: 15 ),
                  width: width, // Set the width of the container
                  height: 180, // Set the height of the container
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), // Round the edges
                      image: DecorationImage(
                        image: AssetImage('assets/media/SaleBanner.jpg'), // Replace with your image asset path
                        fit: BoxFit.cover, // Adjust the image fit
                      ))),

              //CATEGORY_filter
              Category_filter(),//Custom


              //SPECIAL_FOR_YOU
              Container(margin: EdgeInsets.only(top:0,left: 13,right: 5,bottom: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Text('Special For You',style: GoogleFonts.tinos(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))),
                    TextButton(onPressed: (){}, child: Text('See all'))],
                ),
              ),

              //PRODUCT_GRID
              Wrap(spacing: 10,
                runSpacing: 10,
                children: [
                  Product_card(product_no: 0)

                ],),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(top: 0),
                height: 55,
                width: width,
                child: Text(
                  'Ayucure',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.corinthia(
                      textStyle: TextStyle(color: Colors.grey,fontSize: 40)),),
              )
              
            ],),
        )
    );
  }
}