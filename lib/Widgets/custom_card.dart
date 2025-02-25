import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Utils/app_routes.dart';
import 'package:store_app/Widgets/product_details.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({required this.product, super.key});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(updateProduct, extra: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0),
                  spreadRadius: 0,
                  offset: const Offset(10, 20),
                ),
              ],
            ),
            child: Card(
              elevation: 7,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ProductDetails(product: product),
              ),
            ),
          ),
          Positioned(
            right: 25,
            bottom: 85,
            child: Image.network(product.image, width: 80, height: 70),
          ),
        ],
      ),
    );
  }
}
