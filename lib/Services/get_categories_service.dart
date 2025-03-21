import 'package:store_app/Utils/api.dart';

Future<List<String>> getCategoriesService() async {
  List<dynamic> jsonData =
      await Api().get(url: 'https://fakestoreapi.com/products/categories');

  List<String> categories = [];

  for (var category in jsonData) {
    categories.add(category);
  }

  return categories;
}
