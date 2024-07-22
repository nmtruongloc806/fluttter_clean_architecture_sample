import 'package:fluttter_clean_architecture_sample/domain/entities/user.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/user_repository.dart';

abstract class UpdateUserInfoUseCase {
  Future<bool> updateUserInfo(User user);
}

class UpdateUserInfoUseCaseImpl implements UpdateUserInfoUseCase {
  final UserRepository userRepository;

  UpdateUserInfoUseCaseImpl(this.userRepository);

  @override
  Future<bool> updateUserInfo(User user) {
    return userRepository.updateUserInfo(user);
  }
}
