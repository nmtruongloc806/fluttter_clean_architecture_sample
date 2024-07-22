import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'register_controller.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController _controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller.usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _controller.passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _controller.register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
