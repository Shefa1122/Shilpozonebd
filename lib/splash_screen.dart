import 'package:flutter/material.dart';
import 'app_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center Content (Logo, Name, Tagline)
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/logo.png', // your logo image
                      height: 200,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "ShilpoZone",
                      style: TextStyle(
                        color: Color(0xFFE56B2D),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Where every craft has a story",
                      style: TextStyle(
                        color: Color(0xFFE56B2D),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Arrow Button
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios,
                    color: Color(0xFFE56B2D)),
                iconSize: 28,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, AppNavigation.loginRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
