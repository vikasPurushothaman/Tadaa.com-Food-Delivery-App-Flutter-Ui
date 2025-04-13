// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tadaa_app/app/controllers/homeScreen.dart';
import 'app/controllers/user_controller.dart';
import 'app/data/api_service.dart';
import 'app/data/api_client.dart';

void main() {
  // Initialize GetX dependencies
  Get.lazyPut(() => ApiClient());
  Get.lazyPut(() => ApiService(Get.find()));
  Get.lazyPut(() => UserController(Get.find()));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tadaa App',
      home: HomeScreen(),
    );
  }
}
