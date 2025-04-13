// lib/app/controllers/user_controller.dart
import 'package:get/get.dart';
import '../data/api_service.dart';

class UserController extends GetxController {
  var isLoading = false.obs;
  var user = Rx<Map<String, dynamic>?>(null);

  final ApiService apiService;

  UserController(this.apiService);

  // Fetch User data from API
  Future<void> fetchUserData() async {
    try {
      isLoading(true);
      var data = await apiService.fetchUserData();
      user.value = data; // Store the user data
    } finally {
      isLoading(false);
    }
  }

  // Create User
  Future<void> createUser(Map<String, dynamic> userData) async {
    try {
      isLoading(true);
      await apiService.createUser(userData);
    } finally {
      isLoading(false);
    }
  }
}
