import 'package:abarshilpozone/product_detail_page.dart';
import 'package:abarshilpozone/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:abarshilpozone/login_page.dart';
import 'package:abarshilpozone/signup_page.dart';
import 'package:abarshilpozone/homepage.dart';
import 'package:abarshilpozone/shopping_cart_page.dart';
import 'package:abarshilpozone/bottom_navigation.dart';

class AppNavigation {
  static const String loginRoute = '/login';
  static const String signupRoute = '/signup';
  static const String homeRoute = '/home';
  static const String splashRoute = '/splash';
  static const String bottomNavRoute = '/bottomNav';
  static const String productRoute = '/products';
  static const String cartRoute = '/cart';
  static const String trackingRoute = '/tracking';
  static const String profileRoute = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signupRoute:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case splashRoute:
        return MaterialPageRoute(builder: (_) => ShoppingCartPage());
      case bottomNavRoute:
        return MaterialPageRoute(builder: (_) => const BottomNavigation());
      case productRoute:
        return MaterialPageRoute(builder: (_) => const ProductDetailPage());
      case cartRoute:
        return MaterialPageRoute(builder: (_) => ShoppingCartPage());
      case trackingRoute: // Added this case
        return MaterialPageRoute(builder: (_) => const TrackingPage());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}