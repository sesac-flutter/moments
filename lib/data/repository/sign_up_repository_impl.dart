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
      String? prefix}) {
    // TODO: implement signUpUser
    throw UnimplementedError();
  }
}
