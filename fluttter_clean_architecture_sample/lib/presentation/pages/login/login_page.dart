import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
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
              onPressed: _controller.login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
