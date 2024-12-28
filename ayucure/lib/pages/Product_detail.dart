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
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
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
                    Text('Byna Tablet',
                      style: GoogleFonts.aboreto(
                          textStyle:TextStyle(fontSize: 30,
                              color: Colors.black) ),
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
          ]),
        Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Text('Byna Tablet | 100ml',
              style: TextStyle(fontSize: 30),),
              InkWell(
                child: Icon(CupertinoIcons.heart),
              )
            ],
          ),
        )
        ])

    )
  ;}
}