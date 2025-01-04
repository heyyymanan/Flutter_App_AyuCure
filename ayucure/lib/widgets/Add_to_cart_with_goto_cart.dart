import 'package:ayucure/functions/MediaQuery_size.dart';
import 'package:ayucure/functions/navigator.dart';
import 'package:ayucure/pages/Cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dynamic_addtocart extends StatefulWidget {
  @override
  State<Dynamic_addtocart> createState() => _Dynamic_addtocartState();
}

class _Dynamic_addtocartState extends State<Dynamic_addtocart>
    with SingleTickerProviderStateMixin {
  bool isAdded = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (isAdded) {
            navigateTo(context, Cart());
          } else {
            _controller.forward();
            isAdded=true;
          }
        });
      },
      borderRadius: BorderRadius.circular(50),
      child: ClipRect( // Ensures the button stays within bounds
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            final angle = _animation.value * 3.1416; // Radians for X-axis rotation
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001) // Perspective effect
                ..rotateX(angle),
              alignment: Alignment.center,
              child: angle < 1.5708 // Show content conditionally based on angle
                  ? _buildButton(context, 'Add To Cart', Colors.redAccent,
                  CupertinoIcons.cart)
                  : Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateX(3.1416), // Rotate back side to normal
                child: _buildButton(context, 'Go To Cart', Colors.lightGreen,
                    CupertinoIcons.check_mark_circled),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Color color, IconData icon) {
    return Container(
      height: context.percentHeight(6),
      width: context.percentWidth(43),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.only(bottom: 5, right: 15),
      padding: EdgeInsets.all(3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, color: Colors.black),
          Text(
            text,
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
