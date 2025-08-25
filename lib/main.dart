//login page

import 'package:flutter/material.dart';
import 'signup.dart';

void main() => runApp(abarshilpozone());

class abarshilpozone extends StatelessWidget {
  const abarshilpozone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShilpoZone Login',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF446B25),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Logo and white background with torn edge
              Stack(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  Positioned(
                    top: 15,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          height: 160,
                        ),
                        const SizedBox(height: 1),
                        Text(
                          'ShilpoZone',
                          style: TextStyle(
                            color: Colors.orange[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/curve.png',

                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Login Text
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Colors.orange[200],
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 30),

              // Name Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Login Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Handle login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE56B2D),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Log In', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),

              const SizedBox(height: 15),

              // Forgot Password
              TextButton(
                onPressed: () {
                  // TODO: Forgot password action
                },
                child: Text(
                  'Forgot Password\nwww.shilpozone.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orange[200],
                    fontSize: 12,
                  ),
                ),
              ),

              // Signup Button
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: const Text(
                  "Don't have an account? Create one",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
