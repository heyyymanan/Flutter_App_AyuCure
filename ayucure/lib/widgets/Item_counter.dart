import 'package:ayucure/functions/MediaQuery_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item_counter extends StatefulWidget {
  final double height;
  final double width;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color color;
  final Color iconColor;
  final Function(int)? onValueChanged; // Callback to notify parent about num changes

  Item_counter({
    required this.height,
    required this.width,
    this.margin = const EdgeInsets.only(bottom: 5, left: 15),
    this.padding = const EdgeInsets.all(3),
    this.color = Colors.lightGreen,
    this.iconColor = Colors.black,
    this.onValueChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<Item_counter> createState() => _Item_counterState();
}

class _Item_counterState extends State<Item_counter> {
  int num = 1;

  void inc() {
    setState(() {
      num++;
      widget.onValueChanged?.call(num); // Notify parent about the new value
    });
  }

  void dec() {
    setState(() {
      if (num > 1) {
        num--;
        widget.onValueChanged?.call(num); // Notify parent about the new value
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool dec_dis = num == 1;

    return Container(
      margin: widget.margin,
      padding: widget.padding,
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: dec_dis ? null : dec,
            disabledColor: Colors.grey,
            icon: Icon(
              CupertinoIcons.minus_circle,
              size: 30,
              color: dec_dis ? Colors.grey : widget.iconColor,
            ),
          ),
          Text(
            '$num',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          IconButton(
            onPressed: inc,
            icon: Icon(
              CupertinoIcons.plus_circle,
              size: 30,
              color: widget.iconColor,
            ),
          ),
        ],
      ),
    );
  }
}


