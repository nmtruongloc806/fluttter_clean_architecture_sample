import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/register_usecase.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final RegisterUseCase _registerUseCase = Get.find();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void register() async {
    final username = usernameController.text;
    final password = passwordController.text;

    // Implement register logic here
    final success = await _registerUseCase.register(username, password);

    if (success) {
      Get.toNamed('/login');
    } else {
      // Show error message
    }
  }
}
