import 'package:fluttter_clean_architecture_sample/domain/repositories/auth_repository.dart';

abstract class RegisterUseCase {
  Future<bool> register(String username, String password);
}

class RegisterUseCaseImpl implements RegisterUseCase {
  final AuthRepository authRepository;

  RegisterUseCaseImpl(this.authRepository);

  @override
  Future<bool> register(String username, String password) {
    return authRepository.register(username, password);
  }
}
