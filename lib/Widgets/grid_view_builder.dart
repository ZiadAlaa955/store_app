import 'package:flutter/widgets.dart';
import 'package:store_app/Widgets/custom_card.dart';
import 'package:store_app/models/product_model.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 60,
        childAspectRatio: 1.6,
      ),
      itemBuilder: (context, index) {
        return CustomCard(product: products[index]);
      },
    );
  }
}
