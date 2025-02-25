import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';

class PriceAndFavouriteRow extends StatelessWidget {
  const PriceAndFavouriteRow({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(r'$' '${product.price}'),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.solidHeart, color: Colors.red),
        ),
      ],
    );
  }
}
