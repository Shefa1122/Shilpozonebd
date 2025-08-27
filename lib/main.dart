import 'package:flutter/material.dart';
import 'app_navigation.dart';
//import 'login_page.dart';
import 'splash_screen.dart'; // import the splash screen

void main() => runApp(const Abarshilpozone());

class Abarshilpozone extends StatelessWidget {
  const Abarshilpozone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShilpoZone',
      debugShowCheckedModeBanner: false,
      //home: LoginPage(), // Set home directly
      initialRoute: AppNavigation.splashRoute, // start from splash screen
      onGenerateRoute: AppNavigation.generateRoute,
    );
  }
}