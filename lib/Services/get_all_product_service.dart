import 'package:store_app/Utils/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getProduct() async {
    List<dynamic> jsonData =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];

    for (int i = 0; i < jsonData.length; i++) {
      productList.add(ProductModel.fromJson(jsonData[i]));
    }

    return productList;
  }
}
