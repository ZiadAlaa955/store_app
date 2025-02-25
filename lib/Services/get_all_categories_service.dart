import 'package:store_app/Utils/api.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    dynamic jsonData =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return jsonData;
  }
}
