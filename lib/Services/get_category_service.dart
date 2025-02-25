// import 'dart:developer';

// import 'package:store_app/Utils/api.dart';
// import 'package:store_app/models/product_model.dart';

// class GetCategoryService {
//   Future<List<ProductModel>> getCategory({required String categoryName}) async {
//     List<dynamic> jsonData = await Api()
//         .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
//     List<ProductModel> productList = [];
//     for (int i = 0; i < jsonData.length; i++) {
//       productList.add(ProductModel.fromJson(jsonData[i]));
//     }
//     log('productList :');
//     log(productList.toString());
//     return productList;
//   }
// }
