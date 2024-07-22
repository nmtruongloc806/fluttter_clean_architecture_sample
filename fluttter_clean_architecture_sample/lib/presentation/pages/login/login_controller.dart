import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/login_usecase.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginUseCase _loginUseCase = Get.find();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    final username = usernameController.text;
    final password = passwordController.text;

    // Implement login logic here
    final success = await _loginUseCase.login(username, password);

    if (success) {
      Get.toNamed('/home');
    } else {
      // Show error message
    }
  }
}
