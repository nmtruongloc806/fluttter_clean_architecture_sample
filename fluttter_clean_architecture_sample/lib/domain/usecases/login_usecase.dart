import 'package:fluttter_clean_architecture_sample/domain/repositories/auth_repository.dart';

abstract class LoginUseCase {
  Future<bool> login(String username, String password);
}

class LoginUseCaseImpl implements LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCaseImpl(this.authRepository);

  @override
  Future<bool> login(String username, String password) {
    return authRepository.login(username, password);
  }
}
