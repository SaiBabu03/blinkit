import 'package:blinkit/widgets/product_search_delegate.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Blinkit in",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "14 minutes",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.green),
                        SizedBox(width: 8),
                        Text('Home - Delhi',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 4,
              child: TextField(
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: ProductSearchDelegate(Product.sampleProducts()),
                  );
                },
                decoration: InputDecoration(
                  isDense: true,
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: Colors.black,
                  ),
                  hintText: 'Search for products',
                  prefixIcon: const Icon(
                    color: Colors.black,
                    Icons.search,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
