import 'package:ayucure/functions/navigator.dart';
import 'package:ayucure/pages/Product_detail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product_card extends StatelessWidget {
  final int product_no;

  // Constructor to accept the product number
  Product_card({required this.product_no, Key? key}) : super(key: key);

  final CollectionReference _productsCollection =
  FirebaseFirestore.instance.collection('products');

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return StreamBuilder<QuerySnapshot>(
      stream: _productsCollection.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text("No products available"));
        }

        final products = snapshot.data!.docs;

        if (product_no >= products.length) {
          return const Center(child: Text("Invalid product number"));
        }

        final product = products[product_no];
        final data = product.data() as Map<String, dynamic>? ?? {};

        // Handle missing fields with default values
        final String name = data['p_name'] ?? 'Unknown Product';
        final String use = data['p_use'] ?? 'No description available';
        final String imageUrl = data['p_img_1x1'] ?? '';
        final bool isDiscount = data['isdiscount'] ?? false;
        final int discount = data['p_discount'] ?? 0;
        final int price = data['f_mrp'] ?? 0;
        final int originalPrice = data['p_mrp'] ?? price;

        return Column(
          children: [
            InkWell(
              onTap: () {
                navigateTo(context, Product_detail());
              },
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    width: width / 2.2,
                    height: width / 2.2,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: imageUrl.isNotEmpty
                              ? Image.network(imageUrl, fit: BoxFit.cover)
                              : Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.image_not_supported,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: IconButton(onPressed: (){},
                              icon: Icon(CupertinoIcons.heart,
                              color: Colors.white,)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: width / 2.2,
                    color: const Color(0xffEDE0D4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          use,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '₹$price',
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.black),
                            ),
                            if (isDiscount)
                              Column(
                                children: [
                                  Text(
                                    '₹$originalPrice',
                                    style: const TextStyle(
                                      fontSize: 15,
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '$discount% OFF',
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.redAccent),
                                  ),
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
              onTap: () {
                // Add to cart functionality
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                height: 40,
                width: width / 2.2,
                decoration: const BoxDecoration(
                  // color: Color(0xff7f5539),
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Text(
                  'Add To Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
