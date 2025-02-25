import 'package:store_app/Utils/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getProduct() async {
    List<dynamic> jsonData =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];

    for (var product in jsonData) {
      productList.add(ProductModel.fromJson(product));
    }

    return productList;
  }
}
