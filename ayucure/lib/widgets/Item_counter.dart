import 'package:ayucure/functions/MediaQuery_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item_counter extends StatefulWidget{
  @override
  State<Item_counter> createState() => _Item_counterState();
}

class _Item_counterState extends State<Item_counter> {
  int num=1;
  void inc(){
    setState(() {
      num++;
    });
  }
  void dec(){
    setState(() {
      if(num>1)
        num--;
    });
  }
  @override
  Widget build(BuildContext context) {
    bool dec_dis=false;
    if(num==1)
      dec_dis=true;
    return Container(
      margin: EdgeInsets.only(bottom: 5,left: 15),
      padding: EdgeInsets.all(3),
      height: context.percentHeight(6),
      width: context.percentWidth(35),
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: dec_dis?null:dec,
              disabledColor: Colors.black,
              icon: Icon(CupertinoIcons.minus_circle,size: 30,color:dec_dis?Colors.grey: Colors.black)),
          Text('$num',
            style: TextStyle(fontSize: 25,color: Colors.black),),
          IconButton(onPressed: inc,
              icon: Icon(CupertinoIcons.plus_circle,size: 30,color: Colors.black)),
        ],
      ),
    );
  }
}