import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OfferCarousel extends StatelessWidget {
  OfferCarousel({super.key});

  final List<String> banners = [
    "assets/offer_banners/offer1.jpg",
    "assets/offer_banners/offer2.jpg",
    "assets/offer_banners/offer3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 160,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        autoPlayInterval: const Duration(seconds: 3),
      ),
      items: banners.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
