// import 'package:flutter/material.dart';
// import 'package:store_app/Views/category_page.dart';
// import 'package:store_app/models/category_model.dart';

// class CircleCategory extends StatelessWidget {
//   const CircleCategory({super.key, required this.categoryModel});
//   final CategoryModel categoryModel;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.pushNamed(context, CategoryPage.id,
//                   arguments: categoryModel.title);
//             },
//             child: CircleAvatar(
//               radius: 33,
//               backgroundColor: Colors.black,
//               child: CircleAvatar(
//                 radius: 31,
//                 backgroundImage: NetworkImage(
//                   categoryModel.image,
//                 ),
//               ),
//             ),
//           ),
//           Text(
//             categoryModel.title,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
