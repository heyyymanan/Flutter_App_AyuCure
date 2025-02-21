import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.of(context).size.width;

    return Container(height: 50,
        width:width,
        margin: EdgeInsets.only(right: 2, left:2, top: 10,bottom: 10),
        decoration: BoxDecoration(color: Color(0xff2b2d42),
            borderRadius: BorderRadius.circular(30) ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [TextButton(
                onPressed: (){},
                child: Icon(Icons.search,size: 30,color: Colors.white,)),
              Expanded(flex:5,
                  child: TextField(
                      decoration:InputDecoration(border: InputBorder.none,hintText:'Search Here',hintStyle: TextStyle(color: Colors.white) ))),
              Text("|",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25,color: Colors.white)),
              Expanded(flex:1,
                  child: TextButton(onPressed: (){},
                  child: Icon(Icons.filter_list,size: 30,color: Colors.white,))),
            ]));
  }
}