import 'package:dio/dio.dart';

class Api {
  final Dio dio = Dio();

  //Get Products
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, dynamic> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    try {
      Response response = await dio.request(url);

      return response.data;
    } on Exception catch (e) {
      throw Exception('There is an error : ${e.toString()}');
    }
  }

  //Add Product
  Future<dynamic> post(
      {required String url, Map<String, dynamic>? data, String? token}) async {
    Map<String, dynamic> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    try {
      Response response =
          await dio.post(url, data: data, queryParameters: headers);

      return response.data;
    } on Exception catch (e) {
      throw Exception('There is an error : ${e.toString()}');
    }
  }

  //Update Product
  Future<dynamic> put(
      {required String url, Map<String, dynamic>? data, String? token}) async {
    Map<String, dynamic> headers = {};

    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    try {
      Response response = await dio.put(
        url,
        data: data,
        queryParameters: headers,
      );
      return response.data;
    } on Exception catch (e) {
      throw Exception('There is an error : ${e.toString()}');
    }
  }
}
