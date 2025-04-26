import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final categories = [
    "All",
    "Fruits",
    "Vegetables",
    "Dairy",
    "Bakery",
    "Beverages",
    "Electronics"
  ];
  final urls = [
    "assets/icons/all.png",
    "assets/icons/fruits.png",
    "assets/icons/vegetables.png",
    "assets/icons/dairy.png",
    "assets/icons/bakery.png",
    "assets/icons/beverages.png",
    "assets/icons/electronics.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green[100],
                  child: Image.asset(urls[index]),
                ),
                const SizedBox(height: 4),
                Text(categories[index], style: const TextStyle(fontSize: 12))
              ],
            ),
          );
        },
      ),
    );
  }
}
