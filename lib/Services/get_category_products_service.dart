import 'package:store_app/Utils/api.dart';
import 'package:store_app/models/product_model.dart';

Future<List<ProductModel>> getCategoryProductsService(
    {required String categoryName}) async {
  List<dynamic> jsonData = await Api()
      .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

  List<ProductModel> productList = [];

  for (var product in jsonData) {
    productList.add(ProductModel.fromJson(product));
  }

  return productList;
}
