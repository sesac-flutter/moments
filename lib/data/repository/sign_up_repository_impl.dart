import 'package:moments/data/data_source/sign_up/sign_up_data_source.dart';
import 'package:moments/domain/model/user_profile.dart';
import 'package:moments/domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpDataSource _dataSource;

  const SignUpRepositoryImpl({
    required SignUpDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<UserProfile> signUpUser(
      {required String email,
      required String password,
      required String birth,
      required String role,
      required String familyCode,
      String? image,
      String? prefix}) async {
    final uid = await _dataSource.signUp(email: email, password: password);
    final user = await _dataSource.createUser(
        uid: uid,
        birth: birth,
        role: role,
        familyCode: familyCode,
        image: image,
        prefix: prefix);
    return user;
  }
}
