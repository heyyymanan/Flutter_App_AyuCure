import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget{
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          title: Text('AyuCure',
              style: GoogleFonts.corinthia(
                  textStyle:TextStyle(color: Colors.white,fontSize: 45))),
          backgroundColor: Colors.black),
      bottomSheet: ,
    );
  }
}