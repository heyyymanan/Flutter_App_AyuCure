import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CopyProductScreen(),
    );
  }
}

class CopyProductScreen extends StatefulWidget {
  @override
  _CopyProductScreenState createState() => _CopyProductScreenState();
}

class _CopyProductScreenState extends State<CopyProductScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  int currentDocId = 2; // Start from "2" or wherever you'd like

  // Function to copy data from one document to another
  Future<void> copyProduct(String sourceId, int destinationId) async {
    try {
      // Fetch the source document
      DocumentSnapshot sourceDoc =
      await _firestore.collection('products').doc(sourceId).get();

      if (sourceDoc.exists) {
        // Copy the data to the destination document
        await _firestore
            .collection('products')
            .doc(destinationId.toString())
            .set(sourceDoc.data() as Map<String, dynamic>);

        print("Product copied to products/$destinationId successfully!");
      } else {
        print("Source product does not exist.");
      }
    } catch (error) {
      print("Error copying product: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Copy Firestore Document"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Call the function to copy `product/1` to the next destination document
            await copyProduct('1', currentDocId);

            // Increment the document ID for the next copy
            setState(() {
              currentDocId++;
            });

            // Stop at 50 if needed
            if (currentDocId > 50) {
              print("Reached the limit of 50 documents.");
            }
          },
          child: Text("Copy to products/$currentDocId"),
        ),
      ),
    );
  }
}
