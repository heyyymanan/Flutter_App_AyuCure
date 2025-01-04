import 'dart:convert';

import 'package:ayucure/functions/Img_loader.dart';
import 'package:ayucure/functions/MediaQuery_size.dart';
import 'package:ayucure/functions/navigator.dart';
import 'package:ayucure/pages/Product_detail.dart';
import 'package:ayucure/widgets/Item_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget{
  @override
  State<Cart> createState() => _CartState();
}
List products = [];

// Load JSON data
void load_img() async {
  final String jsonString = await rootBundle.loadString('assets/p_images.json');
  final Map<String, dynamic> jsonResponse = json.decode(jsonString);
  products = jsonResponse['products'];
}
int count=1;


class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var u_name='Manan Vyas';
    String u_address='20, Kushal Bagh, Udaipur, Rajasthan';
    int u_pincode=313001;
    var item_count=5;
    var pre_total=4506;
    var savings=460;
    int pmrp_1=120;
    int pmrp_f=pmrp_1*count;



    load_img();
    var p_name='Byna Oil';
    var p_size='100 ML';

    return Scaffold(
      backgroundColor: Color(0xffedf2f4),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          title: Text('AyuCure',
              style: GoogleFonts.corinthia(
                  textStyle:TextStyle(color: Colors.white,fontSize: 45))),
          backgroundColor: Colors.black),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: context.percentHeight(5),
            width: context.percentWidth(100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  navigateTo(context, Product_detail());
                }, icon: Icon(CupertinoIcons.back),color: Colors.black,),
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart_fill),color: Colors.black,),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: context.percentHeight(7),
            width: context.percentWidth(100),
            margin: EdgeInsets.only(top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin:EdgeInsets.all(5),
                  // color: Colors.brown,
                  // padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(TextSpan(
                        style: TextStyle(fontSize: 18),
                        text: 'Deliver To: ',
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.bold),
                            text: '$u_name, $u_pincode'
                          )
                        ]
                      )),
                      Text('$u_address',
                      style: TextStyle(fontSize: 14))
                    ],
                  )
                ),
                Container(
                  // color: Colors.black,
                  margin: EdgeInsets.all(5),
                  child: TextButton(onPressed: (){},
                      child: Text('Change',
                      style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                )

              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Container(
            color: Colors.white,
            width: context.percentWidth(100),
            height: context.percentHeight(4),
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Item Count : $item_count',
                style: TextStyle(fontSize: 15)),
                Text.rich(TextSpan(text: 'You Are Saving : ',
                style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text:'₹$savings',
                    style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                  )]))],
            ),
          ),
          SizedBox(height: 10),
      Stack(
          children:[Card(
            color: Colors.white,
            child:  Container(
                height: context.percentHeight(15),
                width: context.percentWidth(95),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0,bottom: 0,right: 5,left: 6),
                      // color: Colors.red,
                      height: context.percentHeight(13),
                      width: context.percentWidth(28),
                      child: Image.asset(products[0]['images']['p_square']),
                    ),
                    SizedBox(width: context.percentWidth(2)),
                    Container(
                      // color: Colors.red,
                      margin: EdgeInsets.all(4),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('$p_name',
                                style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
                                Text('$p_size',
                                    style: TextStyle(fontSize: 15)),
                              ],
                            ),
                          ),

                        ],
                      )
                    ),
                    SizedBox(width: context.percentWidth(6),),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 15 ,
              child: Text('₹$pmrp_f',
                  style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
            ),
            Positioned(
              bottom: 15,
              left: 140,
              child: Item_counter(
                height: context.percentHeight(5),
                width: context.percentWidth(31),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                color: Colors.redAccent,
                iconColor: Colors.white,
                onValueChanged: (value) {
                setState(() {
                count = value;
                // Update the parent state when `num` changes
                });}
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.multiply_square,size: 30,)),
            )
          ])
        ],
      ),
    );
  }
}