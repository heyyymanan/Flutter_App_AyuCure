import 'package:flutter/material.dart';
class Category_filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("All")),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Joints")),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Tonics")),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Immunity")),
              SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: Text("Muscle")),
            ]));
  }
}
