// import 'package:flutter/material.dart';
// import 'package:store_app/Widgets/circule_category.dart';
// import 'package:store_app/models/category_model.dart';

// class CategoriesListView extends StatelessWidget {
//   const CategoriesListView({super.key});
//   final List<CategoryModel> category = const [
//     CategoryModel(
//       image:
//           'https://i.pinimg.com/236x/8f/f3/0d/8ff30d1c3a4f3268535475665a9545c7.jpg',
//       title: 'men\'s clothing',
//     ),
//     CategoryModel(
//       image:
//           'https://i.pinimg.com/236x/d9/67/bf/d967bf7f8f8ec48f1108ff9e1f736922.jpg',
//       title: 'women\'s clothing',
//     ),
//     CategoryModel(
//         image:
//             'https://i.pinimg.com/236x/d1/eb/76/d1eb76863fe1c407a28c6e0dc21fcb22.jpg',
//         title: 'jewelery'),
//     CategoryModel(
//       image:
//           'https://i.pinimg.com/236x/eb/d8/4a/ebd84aee9bd1feddce359d9803236f4b.jpg',
//       title: 'electronics',
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: category.length,
//       itemBuilder: (context, index) {
//         return CircleCategory(
//           categoryModel: category[index],
//         );
//       },
//     );
//   }
// }
