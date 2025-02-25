import 'package:store_app/Utils/api.dart';
import 'package:store_app/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required int? id,
    required String? title,
    required String? price,
    required String? desc,
    required String? image,
    required String? category,
  }) async {
    Map<String, dynamic> jsonData = await Api().post(
      url: 'https://fakestoreapi.com/products',
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
