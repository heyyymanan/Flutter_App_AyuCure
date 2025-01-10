import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class test extends StatelessWidget {
  final CollectionReference _productsCollection =
  FirebaseFirestore.instance.collection('/products');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _productsCollection.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No products available"));
          }

          final products = snapshot.data!.docs;

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index+1];
              final data = product.data() as Map<String, dynamic>;

              return Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  leading: Image.network(
                    data['p_img'],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(data['p_name'] ?? "No Name"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price: ₹${data['p_mrpf']} (MRP: ₹${data['p_mrpb']})"),
                      Text("Rating: ${data['p_rating']} ⭐"),
                      Text("Stock: ${data['p_stock']}"),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
