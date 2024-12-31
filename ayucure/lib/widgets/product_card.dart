import 'dart:convert';
import 'package:ayucure/functions/navigator.dart';
import 'package:ayucure/pages/Product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product_card extends StatelessWidget {
  final String product_no;

  // Constructor to accept the product number
  Product_card({required this.product_no});

  Future<Map<String, dynamic>> _fetchProductDetails() async {
    // Load the JSON file
    String jsonString = await rootBundle.loadString('assets/products.json');
    Map<String, dynamic> jsonData = json.decode(jsonString);
    return jsonData['products'][product_no];
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final String path = 'assets/PF/$product_no.jpg';


    return FutureBuilder<Map<String, dynamic>>(
      future: _fetchProductDetails(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading product details'));
        } else if (!snapshot.hasData) {
          return Center(child: Text('Product not found'));
        } else {
          final product = snapshot.data!;
          String discount = ((1 - product['fmrp'] / product['pmrp']) * 100).toStringAsFixed(0);
          bool isdiscount;
          if(discount=='0'||int.parse(discount)<5||product['pmrp']<product['fmrp']) {
            isdiscount = false;
          }
          else{
            isdiscount=true;
          }
          return Column(
            children: [
              InkWell(
                onTap: () {
                  navigateTo(context, Product_detail());
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                      width: width / 2.2,
                      height: width / 2.2,
                      child: Stack(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                            child: Image.asset('$path', fit: BoxFit.fill)),
                        Positioned(
                            right: 0,
                            top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10), bottomLeft: Radius.circular(5)),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  color: Colors.brown,
                                  child: Center(
                                      child: FaIcon(FontAwesomeIcons.heart,
                                          color: Colors.white, size: 20)),
                                ),
                              ),
                            )),
                      ]),
                    ),
                    Container(
                      height: 120,
                      width: width / 2.2,
                      color: Color(0xffEDE0D4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(product['name'],
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 20, color: Colors.black)),
                          Text(product['use'],
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15, color: Colors.black)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('₹${product['fmrp']}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25, color: Colors.black)),
                              if(isdiscount)
                                Column(
                                children: [
                                  Text('₹${product['pmrp']}',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey)),
                                  Text(
                                      '$discount% OFF',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 15, color: Colors.redAccent)),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    padding: EdgeInsets.all(5),
                    height: 40,
                    width: width / 2.2,
                    decoration: BoxDecoration(
                        color: Color(0xff7f5539),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                    child: Text(
                      'Add To Cart',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            ],
          );
        }
      },
    );
  }
}
