import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home_drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}