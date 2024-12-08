import 'package:ayucure/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.green),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                    ),
                  ],
                ),
                CircleAvatar(radius:50,backgroundColor:Colors.grey,child: Image.asset('assets/media/ca.jpg',fit: BoxFit.fill,)),
                const SizedBox(height: 20),
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Create your new account",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                _buildTextField(
                  label: "Full Name",
                  icon: Icons.person,
                  isPassword: false,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  label: "Email",
                  icon: Icons.email,
                  isPassword: false,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  label: "Password",
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {
                        // Add functionality
                      },
                      activeColor: Colors.green,
                    ),
                    const Text("Remember Me",style: TextStyle(color: Colors.black),),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        // Forgot Password functionality
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Login functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "------ Or continue with ------",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton(FontAwesomeIcons.facebook, Colors.blue),
                    const SizedBox(width: 20),
                    _buildSocialButton(FontAwesomeIcons.google, Colors.red),
                    const SizedBox(width: 20),
                    _buildSocialButton(FontAwesomeIcons.apple, Colors.black),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    TextButton(
                      onPressed: () {
                        // Sign Up functionality
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    required bool isPassword,
  }) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.green),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, Color color) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: color.withOpacity(0.1),
      child: Icon(icon, color: color),
    );
  }
}
