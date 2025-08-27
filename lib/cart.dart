import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFBF6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "SHOPPING CART",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(Icons.shopping_cart, color: Colors.orange),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.more_horiz, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Products
            ProductCard(
              image: "assets/pot.png",
              title: "Clay pot",
              artisan: "Artisan - moroccan",
              price: "৳354",
              rating: "4/5",
              quantity: "X1",
            ),
            const SizedBox(height: 10),
            ProductCard(
              image: "assets/images/handbag.png",
              title: "Hand Bag",
              artisan: "Artisan - Tharora",
              price: "৳450",
              rating: "4/5",
              quantity: "X1",
            ),
            const SizedBox(height: 10),
            ProductCard(
              image: "assets/images/bangles.png",
              title: "Bangles",
              artisan: "Artisan - Charukotha",
              price: "৳430",
              rating: "4/5",
              quantity: "X1",
            ),
            const SizedBox(height: 20),

            // Order Summary
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFDFF2D8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "ORDER SUMMARY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Icon(Icons.more_horiz, color: Colors.black),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text("20 September 2025",
                        style: TextStyle(fontSize: 12, color: Colors.black54)),
                    const SizedBox(height: 16),

                    // Order Details
                    const SummaryRow(title: "Sub Total", value: "৳1234"),
                    const SummaryRow(title: "Discount (10%)", value: "৳123.4"),
                    const SummaryRow(title: "Tax (10%)", value: "৳123.4"),
                    const SummaryRow(title: "Shipping", value: "৳120"),
                    const Divider(),
                    const SummaryRow(
                      title: "Total",
                      value: "৳1354",
                      isBold: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom checkout section
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total Checkout",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  "৳1354",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Later you can add navigation to checkout page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              ),
              child: const Text(
                "Checkout",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Product Card Widget
class ProductCard extends StatelessWidget {
  final String image, title, artisan, price, rating, quantity;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.artisan,
    required this.price,
    required this.rating,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(image, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(artisan),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(price,
                style: const TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold)),
            const SizedBox(height: 2),
            Text(rating, style: const TextStyle(fontSize: 12)),
            Text(quantity, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

// Summary Row Widget
class SummaryRow extends StatelessWidget {
  final String title, value;
  final bool isBold;

  const SummaryRow(
      {super.key, required this.title, required this.value, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text(value,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
