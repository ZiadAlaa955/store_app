import 'package:store_app/Utils/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String? title,
    required String? price,
    required String? desc,
    required String? image,
    required String? category,
    required dynamic id,
  }) async {
    Map<String, dynamic> jsonData = await Api().put(
      token: 'my token',
      url: 'https://fakestoreapi.com/products/$id',
      data: {
        'id': id,
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
    );

    return ProductModel.fromJson(jsonData);
  }
}
