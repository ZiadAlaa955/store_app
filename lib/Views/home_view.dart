import 'package:flutter/material.dart';
import 'package:store_app/Services/get_all_product_service.dart';
import 'package:store_app/Utils/app_utils.dart';
import 'package:store_app/Widgets/grid_view_builder.dart';
import 'package:store_app/models/product_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Trend'),
        actions: buildAppBarIconButtons(context),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 65),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<List<ProductModel>>(
                future: GetAllProductService().getAllProducts(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data;
                    return GridViewBuilder(products: products);
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return Center(child: Text(snapshot.error.toString()));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
