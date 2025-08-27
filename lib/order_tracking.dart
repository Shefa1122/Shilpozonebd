import 'package:flutter/material.dart';

class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF8E3), // light background like UI
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Order Tracking",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage("assets/profile.png"), // add your profile image here
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Map placeholder
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage("assets/map.png"), // replace with your map image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Order steps
            _buildStep(
              "Order Placement",
              "The seller or e-commerce platform receives the order.",
              true,
            ),
            _buildStep(
              "Order Processing",
              "The seller begins processing the order.",
              true,
            ),
            _buildStep(
              "Packaging",
              "The ordered items are securely packaged.",
              true,
            ),
            _buildStep(
              "Shipping",
              "The packaged items are handed to the courier.",
              true,
            ),
            _buildStep(
              "Transit",
              "The provider delivers the package.",
              false,
            ),
            _buildStep(
              "Delivery",
              "The package arrives at the destination address.",
              false,
            ),
          ],
        ),
      ),
    );
  }

  // Step widget
  Widget _buildStep(String title, String subtitle, bool isDone) {
    return ListTile(
      leading: Icon(
        Icons.circle,
        size: 14,
        color: isDone ? Colors.green : Colors.grey,
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}
