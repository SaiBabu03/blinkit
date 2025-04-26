import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  final List<Product> products = Product.sampleProducts();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(product.imageUrl,
                        fit: BoxFit.fitWidth, width: double.infinity),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.weight,
                        style: const TextStyle(fontSize: 10),
                      ),
                      Text(product.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 6,
                        runSpacing: 4,
                        children: [
                          Text(
                            "₹${(product.price - 5).toStringAsFixed(2)}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "  MRP",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "₹${product.price.toStringAsFixed(2)}",
                            style: const TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Colors.green.shade600)),
                                minimumSize: const Size(40, 30),
                                padding: EdgeInsets.zero,
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            child: const Text(
                              "Add",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
