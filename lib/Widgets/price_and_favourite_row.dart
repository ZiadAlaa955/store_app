import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';

class PriceAndFavouriteRow extends StatefulWidget {
  const PriceAndFavouriteRow({super.key, required this.product});

  final ProductModel product;

  @override
  State<PriceAndFavouriteRow> createState() => _PriceAndFavouriteRowState();
}

class _PriceAndFavouriteRowState extends State<PriceAndFavouriteRow> {
  bool isfavourite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(r'$' '${widget.product.price}'),
        IconButton(
          onPressed: () {
            setState(() {
              isfavourite = !isfavourite;
            });
          },
          icon: Icon(
            FontAwesomeIcons.solidHeart,
            color: isfavourite ? Colors.red : Colors.grey,
          ),
        ),
      ],
    );
  }
}
