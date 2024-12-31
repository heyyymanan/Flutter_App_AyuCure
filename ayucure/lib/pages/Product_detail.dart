import 'package:ayucure/functions/MediaQuery_size.dart';
import 'package:ayucure/functions/navigator.dart';
import 'package:ayucure/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_detail extends StatefulWidget{
  @override
  State<Product_detail> createState() => _Product_detailState();
}

class _Product_detailState extends State<Product_detail> {
  int num=1;


  void inc(){
    setState(() {
      num++;
    });
  }
  void dec(){
    setState(() {
      if(num>1)
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final hight=MediaQuery.of(context).size.height;
    final images=[
      'assets/PF/1.jpg',
      'assets/PF/2.jpg',
      'assets/PF/3.jpg',
    ];
    bool dec_dis=false;
    if(num==1)
      dec_dis=true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('AyuCure',
            style: GoogleFonts.corinthia(
                textStyle: TextStyle(
                    fontSize: 45,
                    color: Colors.white))),
      ),
      body: Column(
        children: [
          Stack(
            children:[ Container(
              height: context.percentWidth(70),
              width: context.percentWidth(100),
              child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return  ClipRRect(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                      child: Image.asset(images[index], fit: BoxFit.cover));
                },
              )
            ),
              Container(
                padding: EdgeInsets.all(10),
                height: context.percentHeight(8),
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        navigateTo(context, HomePage());
                      },
                      child: Container(
                          height: context.percentHeight(4.5),
                          width: context.percentWidth(10),
                          child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black38
                          ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: context.percentHeight(4.5),
                        width: context.percentWidth(10),
                        child: Icon(Icons.shopping_cart,color: Colors.white),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black38
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: Container(
                    height: context.percentHeight(3),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.star_lefthalf_fill,
                          color: Colors.yellow,
                      size: 15),
                      SizedBox(width: context.percentWidth(1)),
                      Text('4.5 Rating ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
                      )
                      
                    ],
                  )

                ),
              )
          ]),
        Container(
          // color: Colors.red,
          padding: EdgeInsets.only(top:10,right: 13,left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Byna Tablet | 100ml',
                  style: GoogleFonts.arapey(textStyle: TextStyle(fontSize: 35))),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(CupertinoIcons.heart,size: 35),
                  )]),
              Text('100 ml',
                style: TextStyle(fontSize: 20,color: Colors.grey),
              )
            ],
          )
        ),
          Container(
            padding: EdgeInsets.only(top:15,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('₹120.00',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  margin: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CupertinoIcons.bolt),
                        Text(' Fast Delivery Within 24 Hrs.')
                      ],
                    ))
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: context.percentHeight(31),
            // color: Colors.redAccent,
            child: Column(
              children: [
                Container(
                  width:double.maxFinite,
                  margin: EdgeInsets.only(left: 15,top: 15),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.start,
                    children: [
                      Text('Relieves : ',
                      style: GoogleFonts.arapey(
                          textStyle:TextStyle(fontSize: 20,color: Colors.green[700],fontWeight: FontWeight.bold))
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3,bottom: 1),
                        padding: EdgeInsets.only(top: 1,bottom: 1,right: 5,left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[300]
                        ),
                        child: Text('Join Pain'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3,bottom: 1),
                        padding: EdgeInsets.only(top: 1,bottom: 1,right: 5,left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[300]
                        ),
                        child: Text('Imflamation'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3,bottom: 1),
                        padding: EdgeInsets.only(top: 1,bottom: 1,right: 5,left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[300]
                        ),
                        child: Text('Imflamation'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3,bottom: 1),
                        padding: EdgeInsets.only(top: 1,bottom: 1,right: 5,left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[300]
                        ),
                        child: Text('Imflamation'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3,bottom: 1),
                        padding: EdgeInsets.only(top: 1,bottom: 1,right: 5,left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[300]
                        ),
                        child: Text('Imflamation'),
                      ),

                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                ),
                Container(
                  height: context.percentHeight(18),
                  width: context.percentWidth(100),
                  // color: Colors.redAccent,
                  child: Text('s'),
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5,left: 15),
                padding: EdgeInsets.all(3),
                height: context.percentHeight(6),
                width: context.percentWidth(35),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: dec_dis?null:dec,
                        disabledColor: Colors.black,
                        icon: Icon(CupertinoIcons.minus_circle,size: 30,color:dec_dis?Colors.grey: Colors.black)),
                    Text('$num',
                    style: TextStyle(fontSize: 25,color: Colors.black),),
                    IconButton(onPressed: inc,
                        icon: Icon(CupertinoIcons.plus_circle,size: 30,color: Colors.black)),
                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: context.percentHeight(6),
                  width: context.percentWidth(43),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  margin: EdgeInsets.only(bottom: 5,right: 15),
                  padding: EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(CupertinoIcons.cart_fill,color: Colors.black,),
                      Text('Add To Cart',
                      style: TextStyle(fontSize: 22,color: Colors.black))
                    ],
                  ),
                ),
              )
            ],
          )

        ])

    )
  ;}
}