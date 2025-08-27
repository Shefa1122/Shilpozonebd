import 'package:abarshilpozone/order_tracking.dart';
import 'package:abarshilpozone/product_detail_page.dart';
import 'package:abarshilpozone/splash_screen.dart';
import 'package:abarshilpozone/user_profile.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'homepage.dart';

class AppNavigation {
  static const String loginRoute = '/login';
  static const String signupRoute = '/signup';
  static const String homeRoute = '/home';
  static const String splashRoute = '/splash';
  static const String cartRoute = '/cart';
  static const String productdetailRoute = '/productdetail';
  static const String ordertrackingRoute = '/ordertracking';



  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signupRoute:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case splashRoute:
        return MaterialPageRoute(builder: (_) => ProfilePage());
        case cartRoute:
          return MaterialPageRoute(builder: (_) => CartPage());
      case productdetailRoute:
        return MaterialPageRoute(builder: (_) => ProductDetailPage());
      case ordertrackingRoute:
        return MaterialPageRoute(builder: (_) => OrderTrackingPage());
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