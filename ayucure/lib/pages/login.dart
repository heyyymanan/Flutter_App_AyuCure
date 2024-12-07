import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text('AyuCure')),
            backgroundColor: const Color(0xffffc2ce)),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffa8edea), Color(0xfffed6e3)],
                  end: FractionalOffset(.5, 0),
                  begin: FractionalOffset(.5, 1))),
          child: Center(
            child: Column(children: [
              const SizedBox(
                width: double.infinity,
                height: 40,
              ),

              const Text("AyuCure",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Image.asset("assets/img/Logos/AyuCureLogo.jpg",fit: BoxFit.cover),
              Text('Welcome $name',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'apple',
                      color: Colors.black87)),
              const Text('It Felt Lonely Without You.',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'regular',
                      color: Colors.black87)),
              const SizedBox(height: 80),
              SizedBox(
                width: 350,
                child: TextField(
                  onChanged: (value) =>setState(() {
                    name=value;
                  }),
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.email),
                      labelText: 'Enter Name',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Colors.grey, width: 2))),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Enter Password',
                        suffixIcon: const Icon(Icons.lock_open),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )),
              const SizedBox(height: 40),
              SizedBox(
                  height: 70,
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade400,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 25),
                      ))),
              const SizedBox(
                height: 30,
              ),
              const Text("------ or continue with ------"),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 70,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87),
                          child: const FaIcon(FontAwesomeIcons.google,
                              color: Colors.white),
                        )),
                    SizedBox(
                        height: 70,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87),
                          child: const FaIcon(FontAwesomeIcons.facebook,
                              color: Colors.white),
                        )),
                    SizedBox(
                        height: 70,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87),
                          child: const FaIcon(FontAwesomeIcons.github,
                              color: Colors.white),
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}