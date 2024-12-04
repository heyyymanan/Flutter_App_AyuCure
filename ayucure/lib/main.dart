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
            title: Text(
              'AyuCure',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
        body: Container(
          width: 500,
          height: 50,
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 194, 194, 194),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Icon(Icons.search),
              ),
              TextField(
                decoration: InputDecoration(hintText:"Search...."),
              ),
            ],
          ),
          padding: EdgeInsets.only(right: 350),
        ));
  }
}
