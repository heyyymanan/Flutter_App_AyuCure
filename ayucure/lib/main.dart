import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AyuCure',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Homepage_state();
}

class Homepage_state extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('AyuCure',style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.black),
        body: Column(
          children: [
            Container(height: 50,width:400 , margin: EdgeInsets.only(right: 15, left:15, top: 20),
            decoration: BoxDecoration(color: Color(0xffEBE0FF),borderRadius: BorderRadius.circular(30) ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [TextButton(
                  onPressed: (){}, child: Icon(Icons.search,size: 30,color: Colors.black,)),
                Expanded(flex:6,child: TextField(decoration: InputDecoration(border: InputBorder.none),)),
                    Text("|",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                    Expanded(flex:1,child: Icon(Icons.filter_list,size: 30))
                  ])),
          SizedBox(height: 50),
          // Container(height:500,width: 500,decoration: BoxDecoration(color: Colors.red),)
          // Container(
          //   margin: EdgeInsets.all(20),padding: EdgeInsets.zero,
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),color: Colors.black),
          //     child: Image.asset('assets/SaleBanner.jpg',))
          ],)



        );
  }
}
