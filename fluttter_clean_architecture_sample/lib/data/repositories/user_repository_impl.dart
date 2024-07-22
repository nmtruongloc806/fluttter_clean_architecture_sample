import 'package:fluttter_clean_architecture_sample/data/clients/api_client.dart';
import 'package:fluttter_clean_architecture_sample/data/local_database/local_database.dart';
import 'package:fluttter_clean_architecture_sample/data/mappers/user_mapper.dart';
import 'package:fluttter_clean_architecture_sample/domain/entities/user.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiClient apiClient;
  final LocalDatabase localDatabase;

  UserRepositoryImpl({
    required this.apiClient,
    required this.localDatabase,
  });

  @override
  Future<User?> getUser(String id) async {
    final userJson = await localDatabase.getUser(id);
    if (userJson != null) {
      return UserMapper.fromJson(userJson);
    }
    final response = await apiClient.get('/users/$id');
    if (response.statusCode == 200) {
      final user = UserMapper.fromJson(response.data);
      await localDatabase.insertUser(UserMapper.toJson(user));
      return user;
    }
    return null;
  }

  @override
  Future<bool> updateUserInfo(User user) async {
    final response =
        await apiClient.post('/users/${user.id}', UserMapper.toJson(user));
    if (response.statusCode == 200) {
      await localDatabase.insertUser(UserMapper.toJson(user));
      return true;
    }
    return false;
  }
}
