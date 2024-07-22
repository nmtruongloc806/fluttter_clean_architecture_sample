import 'package:fluttter_clean_architecture_sample/domain/entities/user.dart';

class UserMapper {
  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      name: json['name'],
      position: json['position'],
      department: json['department'],
      phoneNumber: json['phoneNumber'],
      avatarUrl: json['avatarUrl'],
    );
  }

  static Map<String, dynamic> toJson(User user) {
    return {
      'id': user.id,
      'username': user.username,
      'name': user.name,
      'position': user.position,
      'department': user.department,
      'phoneNumber': user.phoneNumber,
      'avatarUrl': user.avatarUrl,
    };
  }
}
