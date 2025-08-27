import 'package:abarshilpozone/product_detail_page.dart';
import 'package:abarshilpozone/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:abarshilpozone/homepage.dart';
import 'package:abarshilpozone/shopping_cart_page.dart';

// Create a simple placeholder for Tracking page
class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Tracking'),
      ),
      body: const Center(
        child: Text('Tracking feature will be implemented soon'),
      ),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  final int initialIndex;

  const BottomNavigation({super.key, this.initialIndex = 0});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const ProductDetailPage(),
    ShoppingCartPage(),
    const TrackingPage(), // Added TrackingPage here
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Tracking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Added this to ensure all items are visible
      ),
    );
  }
}