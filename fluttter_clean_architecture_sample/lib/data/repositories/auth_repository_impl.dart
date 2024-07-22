import 'package:dio/dio.dart';
import 'package:fluttter_clean_architecture_sample/data/clients/api_client.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient apiClient;

  AuthRepositoryImpl(this.apiClient);

  @override
  Future<bool> login(String username, String password) async {
    final response = await apiClient.post('/login', {
      'username': username,
      'password': password,
    });

    return response.statusCode == 200;
  }

  @override
  Future<bool> register(String username, String password) async {
    final response = await apiClient.post('/register', {
      'username': username,
      'password': password,
    });

    return response.statusCode == 200;
  }
}
