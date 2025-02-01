import 'package:dio/dio.dart';
import 'package:demo/core/error/exceptions.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<dynamic> get(String url) async {
    try {
      final response = await _dio.get(url);
      return response.data;
    } on DioException catch (e) {
      throw ServerException(message: e.message!);
    }
  }

  Future<dynamic> post(String url, Map<String, dynamic> data) async {
    try {
      // final response = await _dio.post(url, data: data);
      // return response.data;
      return {'token': 'token'};
    } on DioException catch (e) {
      throw ServerException(message: e.message!);
    }
  }
}
