// lib/app/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class HomeScreen extends StatelessWidget {
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tadaa App')),
      body: Center(
        child: Obx(
          () => userController.isLoading.value
              ? CircularProgressIndicator()
              : userController.user.value == null
                  ? Text('No user data available')
                  : Text('User: ${userController.user.value!['name']}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userController.fetchUserData();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
