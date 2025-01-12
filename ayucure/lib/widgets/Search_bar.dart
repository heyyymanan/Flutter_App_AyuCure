import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.of(context).size.width;

    return Container(height: 50,
        width:width,
        margin: EdgeInsets.only(right: 6, left:6, top: 5,bottom: 10),
        decoration: BoxDecoration(color: Color(0xffa68a64),borderRadius: BorderRadius.circular(30) ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [TextButton(
                onPressed: (){}, child: Icon(Icons.search,size: 30,color: Colors.black,)),
              Expanded(flex:5,child: TextField(decoration: InputDecoration(border: InputBorder.none),)),
              Text("|",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
              Expanded(flex:1,child: TextButton(onPressed: (){},child: Icon(Icons.filter_list,size: 30))),
            ]));
  }
}