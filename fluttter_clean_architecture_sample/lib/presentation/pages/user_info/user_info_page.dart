import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/user_info/user_info_controller.dart';
import 'package:get/get.dart';

class UserInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserInfoController controller = Get.find();

    return Scaffold(
      appBar: AppBar(title: Text('User Info')),
      body: Obx(() {
        return controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller:
                          TextEditingController(text: controller.name.value),
                      decoration: InputDecoration(labelText: 'Name'),
                      onChanged: (value) => controller.name.value = value,
                    ),
                    TextField(
                      controller: TextEditingController(
                          text: controller.position.value),
                      decoration: InputDecoration(labelText: 'Position'),
                      onChanged: (value) => controller.position.value = value,
                    ),
                    TextField(
                      controller: TextEditingController(
                          text: controller.department.value),
                      decoration: InputDecoration(labelText: 'Department'),
                      onChanged: (value) => controller.department.value = value,
                    ),
                    TextField(
                      controller: TextEditingController(
                          text: controller.phoneNumber.value),
                      decoration: InputDecoration(labelText: 'Phone Number'),
                      onChanged: (value) =>
                          controller.phoneNumber.value = value,
                    ),
                    TextField(
                      controller: TextEditingController(
                          text: controller.avatarUrl.value),
                      decoration: InputDecoration(labelText: 'Avatar URL'),
                      onChanged: (value) => controller.avatarUrl.value = value,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => controller.updateUserInfo(),
                      child: Text('Update Info'),
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
