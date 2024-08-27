import 'package:moments/domain/model/user_profile.dart';
import 'package:moments/domain/repository/sign_up_repository.dart';

class SignUpUseCase {
  final SignUpRepository _repository;

  const SignUpUseCase({
    required SignUpRepository repository,
  }) : _repository = repository;

  Future<UserProfile> execute({
    required String email,
    required String password,
    required String birth,
    required String role,
    required String familyCode,
    String? image,
    String? prefix,
  }) async {
    final user = await _repository.signUpUser(
        email: email,
        password: password,
        birth: birth,
        role: role,
        familyCode: familyCode,
        image: image,
        prefix: prefix);
    return user;
  }
}
