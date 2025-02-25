import 'dart:developer';
import 'package:dio/dio.dart';

class Api {
  final Dio dio = Dio();

  Future<dynamic> get({required String url, String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      Response response = await dio.request(url);
      dynamic jsonData = response.data;
      return jsonData;
    } on Exception catch (e) {
      log(e.toString());
      throw Exception('There is an error...');
    }
  }

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
        queryParameters: headers,
      );
      dynamic jsonData = response.data;
      return jsonData;
    } on Exception catch (e) {
      log(e.toString());
      throw Exception('There is an error...');
    }
  }

  Future<dynamic> put(
      {required String url, Map<String, dynamic>? data, String? token}) async {
    Map<String, dynamic> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    log('URL : $url , Data : $data , Token : $token');
    try {
      Response response = await dio.put(
        url,
        data: data,
        queryParameters: headers,
      );
      log(data.toString());
      dynamic jsonData = response.data;
      return jsonData;
    } on Exception catch (e) {
      log(e.toString());
      throw Exception('There is an error...');
    }
  }
}
