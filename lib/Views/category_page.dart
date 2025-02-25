// import 'package:flutter/material.dart';
// import 'package:store_app/Services/get_category_service.dart';
// import 'package:store_app/Widgets/custom_card.dart';
// import 'package:store_app/models/product_model.dart';

// class CategoryPage extends StatelessWidget {
//   const CategoryPage({super.key});
//   static String id = 'categoryPage';
//   @override
//   Widget build(BuildContext context) {
//     final String title = ModalRoute.of(context)!.settings.arguments as String;
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 65),
//         child: FutureBuilder<List<ProductModel>>(
//           future: GetCategoryService().getCategory(categoryName: title),
//           builder: (context, AsyncSnapshot snapshot) {
//             if (snapshot.hasData) {
//               List<ProductModel> products = snapshot.data;
//               return GridView.builder(
//                 itemCount: products.length,
//                 clipBehavior: Clip.none,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 60,
//                   childAspectRatio: 1.6,
//                 ),
//                 itemBuilder: (context, index) {
//                   return CustomCard(
//                     product: products[index],
//                   );
//                 },
//               );
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
