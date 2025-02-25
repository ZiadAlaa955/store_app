import 'package:flutter/material.dart';
import 'package:store_app/Widgets/price_and_favourite_row.dart';
import 'package:store_app/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          product.title,
          style: const TextStyle(color: Colors.grey),
        ),
        PriceAndFavouriteRow(product: product),
      ],
    );
  }
}
