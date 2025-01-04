import 'dart:convert';
import 'package:ayucure/functions/MediaQuery_size.dart';
import 'package:ayucure/functions/navigator.dart';
import 'package:ayucure/pages/home.dart';
import 'package:ayucure/widgets/Add_to_cart_with_goto_cart.dart';
import 'package:ayucure/widgets/Item_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    SizedBox(height: 5)
    ]);
  }
}
class BulletPoint extends StatelessWidget {
  final String text;

  BulletPoint(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• ", style: TextStyle(fontSize: 18)),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}

class Product_detail extends StatefulWidget{
  @override
  State<Product_detail> createState() => _Product_detailState();
}
  List products = [];

  // Load JSON data
    void load_img() async {
      final String jsonString = await rootBundle.loadString('assets/p_images.json');
      final Map<String, dynamic> jsonResponse = json.decode(jsonString);
      products = jsonResponse['products'];
    }

class _Product_detailState extends State<Product_detail> {
  bool isliked=false;
  bool isUDR=false;
  void liked(){
    if(!isliked)
      isliked=true;
    else if(isliked)
      isliked=false;
  }

  @override
  Widget build(BuildContext context) {
    load_img();
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
      bottomSheet: Container(
        margin: EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Item_counter(
        height: context.percentHeight(6),
        width: context.percentWidth(35),
        margin: EdgeInsets.only(bottom: 10, left: 20),
      ), //Custom
              Dynamic_addtocart()
            ]
        ),
      ),
      body: SingleChildScrollView(
        child:
        Column(
          children: [
            Stack(
              children:[ Container(
                height: context.percentHeight(35),
                width: context.percentWidth(100),
                child: PageView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return  ClipRRect(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                        child: Image.asset(products[index]['images']['p_rectangle'], fit: BoxFit.cover));
                  },
                )
              ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: context.percentHeight(8),
                  width: context.percentWidth(100),
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
                    Text('Byna Oil',
                    style: GoogleFonts.arapey(textStyle: TextStyle(fontSize: 35))),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          liked();
                        });
                      },
                      icon: isliked?Icon(CupertinoIcons.heart_fill,size:35,color:Colors.redAccent)
                          :Icon(CupertinoIcons.heart,size: 35),
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
                          Text(isUDR?' Fast Delivery Within 24 Hrs. ':' Fast Delivery. ')
                        ],
                      ))
                ],
              ),
            ),
            Container(
              // color: Colors.redAccent,
              child: Column(
                children: [
                  Container(
                    width:context.percentWidth(100),
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
                        )
        
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    width: context.percentWidth(100),
                    padding: EdgeInsets.only(left: 15,top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Health Benefits
                    SectionTitle("Health Benefits"),
                    BulletPoint("100% natural and Ayurvedic."),
                    // BulletPoint("Clinically tested and certified."),
                    // BulletPoint("No added preservatives or chemicals."),
                    BulletPoint("Promotes healthy digestion."),
                    BulletPoint("Supports detoxification and weight management."),
                    BulletPoint("Enhances immunity and energy levels."),
                    SizedBox(height: 10),
        
                    // Dosage
                    SectionTitle("Dosage"),
                    Text(
                      "Adults: Take 1 capsule twice daily after meals.\n"
                          "Children (above 12 years): Take 1 capsule once daily.\n"
                          "Consult your physician for personalized recommendations.",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                        // Ingredients
                    SectionTitle("Ingredients"),
                    BulletPoint("Triphala (Amla, Haritaki, Bibhitaki): Improves digestion and detoxifies the body."),
                    BulletPoint("Ashwagandha: Reduces stress and boosts energy."),
                    BulletPoint("Tulsi: Enhances respiratory health."),
                    SizedBox(height: 10),
                    // Certification and Quality
                    SectionTitle("Certification and Quality"),
                    BulletPoint("Certified by GMP, ISO, or Ayurvedic Council."),
                    BulletPoint("Free from parabens, artificial colors, and chemicals."),
                    SizedBox(height: 80)
                ],
              ),
            ),
        
        
          ])
        
            )]),
      ));
  }
}