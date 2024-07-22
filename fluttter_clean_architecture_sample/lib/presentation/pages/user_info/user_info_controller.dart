import 'package:fluttter_clean_architecture_sample/domain/entities/user.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/update_user_info_usecase.dart';
import 'package:get/get.dart';

class UserInfoController extends GetxController {
  final UpdateUserInfoUseCase updateUserInfoUseCase;

  // Fields to hold user info
  var name = ''.obs;
  var position = ''.obs;
  var department = ''.obs;
  var phoneNumber = ''.obs;
  var avatarUrl = ''.obs;

  // Loading state
  var isLoading = false.obs;

  UserInfoController({required this.updateUserInfoUseCase});

  // Method to load user info
  void loadUserInfo(User user) {
    name.value = user.name;
    position.value = user.position;
    department.value = user.department;
    phoneNumber.value = user.phoneNumber;
    avatarUrl.value = user.avatarUrl;
  }

  // Method to update user info
  Future<void> updateUserInfo() async {
    isLoading.value = true;

    final user = User(
      id: 'user-id', // Should be retrieved from authentication or context
      username:
          'username', // Should be retrieved from authentication or context
      name: name.value,
      position: position.value,
      department: department.value,
      phoneNumber: phoneNumber.value,
      avatarUrl: avatarUrl.value,
    );

    final success = await updateUserInfoUseCase.updateUserInfo(user);

    if (success) {
      // Show success message
      Get.snackbar('Success', 'User information updated successfully');
    } else {
      // Show error message
      Get.snackbar('Error', 'Failed to update user information');
    }

    isLoading.value = false;
  }
}
