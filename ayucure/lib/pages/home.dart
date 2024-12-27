import 'package:ayucure/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Homepage();
}
class Homepage extends State<HomePage> {

  List product=[
    'assets/PF/1.jpg',
    'assets/PF/2.jpg',
    'assets/PF/3.jpg',
    'assets/PF/4.jpg',
    'assets/PF/5.jpg',
    'assets/PF/6.jpg',
    'assets/PF/7.jpg',
    'assets/PF/8.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(
          backgroundColor:Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children:[ DrawerHeader(
              margin: EdgeInsets.only(top: 0,bottom: 15),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(gradient:
                  LinearGradient(colors: [Color(0xffff023e8a),Color(0xff00b4d8)])),
                  margin: EdgeInsets.only(top: 0),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/media/avatar.jpg')),
                  accountName: Text('Manan Vyas',style: TextStyle(color: Colors.white),),
                accountEmail: Text('mananindia5@gmail.com',style: TextStyle(color: Colors.white)),
            )),
              ListTile(
                splashColor: Colors.grey,
                onTap: (){},
                leading: FaIcon(FontAwesomeIcons.box,size:25,color: Colors.black,),
                title: Text('Your Orders',style: TextStyle(fontSize: 25,color: Colors.black))),
              ListTile(
                  splashColor: Colors.grey,
                  onTap: (){},
                  leading: FaIcon(FontAwesomeIcons.gear,color: Colors.black,size: 25),
                  title: Text('Settings',style: TextStyle(fontSize: 25,color: Colors.black))),
              ListTile(
                  splashColor: Colors.grey,
                  onTap: (){},
                  leading: FaIcon(FontAwesomeIcons.circleExclamation,size:25,color: Colors.black,),
                  title: Text('About',style: TextStyle(fontSize: 25,color: Colors.black))),
              SizedBox(height: 250),
              Container(
                  width: double.infinity, // Set the width to match the screen
                  height: 45, // Set a specific height
                  margin: EdgeInsets.all(90),
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2),
                          backgroundColor: Colors.white, elevation: 5),
                      onPressed: (){},
                  child: Text('LOGOUT',style: TextStyle(fontSize: 18,color: Colors.black),)))
            ]),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            title: Text('AyuCure',style: GoogleFonts.corinthia(textStyle:TextStyle(color: Colors.white,fontSize: 45))),
            backgroundColor: Colors.black),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //SEARCH_BAR
              Container(height: 50,width:width , margin: EdgeInsets.only(right: 10, left:10, top: 10,bottom: 15),
                  decoration: BoxDecoration(color: Color(0xffEBE0FF),borderRadius: BorderRadius.circular(30) ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [TextButton(
                          onPressed: (){}, child: Icon(Icons.search,size: 30,color: Colors.black,)),
                        Expanded(flex:5,child: TextField(decoration: InputDecoration(border: InputBorder.none),)),
                        Text("|",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                        Expanded(flex:1,child: TextButton(onPressed: (){},child: Icon(Icons.filter_list,size: 30))),
                      ])),

              //BANNER
              Container(
                margin: EdgeInsets.only(right:10 ,left:10,bottom: 15 ),
                  width: width, // Set the width of the container
                  height: 180, // Set the height of the container
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), // Round the edges
                      image: DecorationImage(
                        image: AssetImage('assets/media/SaleBanner.jpg'), // Replace with your image asset path
                        fit: BoxFit.cover, // Adjust the image fit
                      ))),

              //CATEGORY
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child:Row(
                      children: [
                        SizedBox(width:10),
                        OutlinedButton(onPressed: (){}, child: Text("All")),
                        SizedBox(width:10),
                        OutlinedButton(onPressed: (){}, child: Text("Joints")),
                        SizedBox(width:10),
                        OutlinedButton(onPressed: (){}, child: Text("Tonics")),
                        SizedBox(width:10),
                        OutlinedButton(onPressed: (){}, child: Text("Immunity")),
                        SizedBox(width:10),
                        OutlinedButton(onPressed: (){}, child: Text("Muscle")),
                      ])),

              //SPECIAL_FOR_YOU
              Container(margin: EdgeInsets.only(top:0,left: 13,right: 5,bottom: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Text('Special For You',style: GoogleFonts.tinos(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))),
                    TextButton(onPressed: (){}, child: Text('See all'))],
                ),
              ),

              //PRODUCT_GRID
              Wrap(spacing: 10,
                runSpacing: 10,
                children: [
                Column(
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
                                      child: Image.asset(product[0],fit: BoxFit.fill)),
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
                ),






              ],)
          
          
          
          
          
          
            ],),
        )



    );
  }
}