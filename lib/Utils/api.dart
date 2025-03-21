import 'package:dio/dio.dart';

class Api {
  final Dio dio = Dio();

  //Get
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, dynamic> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    try {
      Response response = await dio.get(
        url,
        options: Options(headers: headers),
      );

      dynamic jsonData = response.data;

      return jsonData;
    } on Exception catch (e) {
      throw Exception('There is an error : ${e.toString()}');
    }
  }

  //Add
  Future<dynamic> post(
      {required String url, Map<String, dynamic>? data, String? token}) async {
    Map<String, dynamic> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    try {
      Response response = await dio.post(
        url,
        data: data,
        options: Options(headers: headers),
      );

      dynamic jsonData = response.data;

      return jsonData;
    } on Exception catch (e) {
      throw Exception('There is an error : ${e.toString()}');
    }
  }

  //Update
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
        options: Options(headers: headers),
      );

      dynamic jsonData = response.data;

      return jsonData;
    } on Exception catch (e) {
      throw Exception('There is an error : ${e.toString()}');
    }
  }
}
