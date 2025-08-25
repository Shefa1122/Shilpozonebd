import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String? name;
  final int? price;
  final String? image;

  const ProductDetailPage({super.key, this.name, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name ?? "Product")),
      body: Column(
        children: [
          Image.asset(image ?? "assets/logo.png", height: 250),
          const SizedBox(height: 10),
          Text(name ?? "", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text("${price ?? 0} BDT", style: const TextStyle(fontSize: 18, color: Colors.green)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}
