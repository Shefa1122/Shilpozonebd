import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {"name": "Handmade Bag", "price": 1200, "quantity": 1},
    {"name": "Clay Pot", "price": 500, "quantity": 2},
  ];

  ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (var item in cartItems) {
      total += item['price'] * item['quantity'];
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Shopping Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]['name']),
                  subtitle: Text("Qty: ${cartItems[index]['quantity']}"),
                  trailing: Text("${cartItems[index]['price']} BDT"),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Total: $total BDT", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
