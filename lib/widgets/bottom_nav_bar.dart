import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.yellow[900],
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded), label: 'Order Again'),
        BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.print), label: 'Print'),
      ],
    );
  }
}



