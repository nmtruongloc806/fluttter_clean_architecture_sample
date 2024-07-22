import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient({required this.dio});

  Future<Response> get(String url) async {
    return await dio.get(url);
  }

  Future<Response> post(String url, dynamic data) async {
    return await dio.post(url, data: data);
  }
}
