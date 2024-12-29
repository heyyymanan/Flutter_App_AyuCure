import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_detail extends StatefulWidget{
  @override
  State<Product_detail> createState() => _Product_detailState();
}

class _Product_detailState extends State<Product_detail> {

  @override
  Widget build(BuildContext context) {
    final images=[
      'assets/PF/1.jpg',
      'assets/PF/2.jpg',
      'assets/PF/3.jpg',
    ];
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
              height: 300,
              width: double.infinity,
              color: Colors.pink,
              child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return  Image.asset(images[index], fit: BoxFit.cover);
                },
              )
            ),
              Container(
                padding: EdgeInsets.all(10),
                height: 65,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                          height: 40,
                          width: 40,
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
                        height: 40,
                        width: 40,
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
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.star_lefthalf_fill,
                          color: Colors.yellow,
                      size: 15),
                      SizedBox(width: 5),
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
                  InkWell(
                    onTap: (){},
                    child: Icon(CupertinoIcons.heart,size: 35),
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
            height: 270,
            color: Colors.redAccent,
            child: Column(
              children: [
                Container(
                  // color: Colors.redAccent,
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
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                )
              ],
            ),

          )

        ])

    )
  ;}
}