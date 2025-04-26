import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductSearchDelegate extends SearchDelegate {
  final List<Product> products;

  ProductSearchDelegate(this.products);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = '')
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = products
        .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return _buildResultList(results);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = products
        .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return _buildResultList(suggestions);
  }

  Widget _buildResultList(List<Product> items) {
    if (items.isEmpty) {
      return const Center(child: Text("No products found"));
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final p = items[index];
        return ListTile(
          leading: Image.asset(p.imageUrl,
              width: 50, height: 50, fit: BoxFit.cover),
          title: Text(p.name),
          subtitle: Text("${p.weight} • ₹${p.price}"),
          onTap: () {
            // Optional: handle tap
          },
        );
      },
    );
  }
}
