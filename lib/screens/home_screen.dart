import 'package:flutter/material.dart';
import '../widgets/top_app_bar.dart';
import '../widgets/category_list.dart';
import '../widgets/offer_carousel.dart';
import '../widgets/product_grid.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(260),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.1, 0.5, 1],
                colors: [
                  Color(0xffEF8215),
                  Color(0xFFF4CBA3),
                  Color(0xFFF4EFEC)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                const TopAppBar(),
                CategoryList(),
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OfferCarousel(),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Best Sellers',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ProductGrid(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
