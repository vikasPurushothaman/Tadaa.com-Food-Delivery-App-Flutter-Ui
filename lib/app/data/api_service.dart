// lib/app/data/api_service.dart
import 'api_client.dart';

class ApiService {
  final ApiClient _apiClient;

  ApiService(this._apiClient);

  Future<dynamic> fetchUserData() async {
    final response = await _apiClient.get('/user');  // Example endpoint
    return response.data;
  }

  Future<dynamic> createUser(Map<String, dynamic> userData) async {
    final response = await _apiClient.post('/user', userData);  // Example POST request
    return response.data;
  }
}
