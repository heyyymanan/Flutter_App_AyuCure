import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Custom widget class
class Product_Card extends StatelessWidget {
  final String product_no;
  final String qty;
  final int fmrp;
  final int pmrp;
  final String use;
  final BuildContext context;


  // Constructor to accept parameters
  Product_Card({required this.context,required this.product_no, required this.fmrp,required this.pmrp,required this.qty,required this.use });

  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    final String path='assets/PF/$product_no.jpg';

    return Column(
      children: [
        InkWell(onTap: (){},
            child:
            Column(
              children: [
                Container(
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                  width: width/2.2,height: width/2.2,
                  child: Stack(
                      children:[
                        ClipRRect(borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            child: Image.asset('$path',fit: BoxFit.fill)),
                        Positioned(
                            right: 0,
                            top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(5)),
                              child: InkWell(
                                onTap: (){},
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  color: Colors.brown,
                                  child: Center(
                                      child: FaIcon(FontAwesomeIcons.heart,color: Colors.white,size: 20,)),),
                              ),)),
                      ]),
                ),
                Container(
                  height: 100,
                  width: width/2.2,
                  color: Color(0xffEDE0D4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Byna Oil | 100ml',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20,color: Colors.black)),
                      Text('Joint Pain | Inflamation',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15,color: Colors.black)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('₹ 180',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 25,color: Colors.black)),
                          Text('₹280',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey)),
                          Text('-10% OFF',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15,color: Colors.redAccent)),
                        ],
                      ),],),),

              ],
            )),
        InkWell(
          onTap: (){},
          child: Container(
              padding: EdgeInsets.all(5),
              height: 40,
              width: width/2.2,
              decoration: BoxDecoration(
                  color: Color(0xff7f5539),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))

              ),
              child:Text('Add To Cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20),)
          ),
        ),
      ],
    );
  }
}