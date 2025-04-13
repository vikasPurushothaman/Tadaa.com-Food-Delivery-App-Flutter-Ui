// lib/app/data/api_client.dart
import 'package:dio/dio.dart';
import '../utils/constants.dart';

class ApiClient {
  final Dio _dio;

  ApiClient() : _dio = Dio(BaseOptions(baseUrl: Constants.baseUrl));

  Future<Response> get(String url) async {
    try {
      final response = await _dio.get(url);
      return response;
    } catch (error) {
      throw Exception('Failed to load data');
    }
  }

  Future<Response> post(String url, dynamic data) async {
    try {
      final response = await _dio.post(url, data: data);
      return response;
    } catch (error) {
      throw Exception('Failed to post data');
    }
  }
}
