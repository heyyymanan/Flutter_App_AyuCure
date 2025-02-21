import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Category_filter extends StatelessWidget {
  Map isselected={
    "All" : true,
    "Joints" : false,
    "Tonics" : false,
    "Immunity" : false,
    "Memory" : false
  };
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              SizedBox(width: 10),
              OutlinedButton(
                  style: isselected["All"]?
                  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey)):null,
                  onPressed: () {
              }, child: Text("All",
                style:GoogleFonts.tinos(
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),)),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Joints",
                style:GoogleFonts.tinos(
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),)),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Tonics",
                style:GoogleFonts.tinos(
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),)),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Immunity",
                style:GoogleFonts.tinos(
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),)),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Memory",
                style:GoogleFonts.tinos(
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),)),
              SizedBox(width: 10),
            ]));
  }

  // void select() {
  //   if (isselected["All"==true])
  //     isselected["All"]=false;
  //   else if (isselected["All"==false])
  //     isselected["All"]=true;
  // }
}
