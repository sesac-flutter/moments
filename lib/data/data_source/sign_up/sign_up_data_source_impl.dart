import 'package:moments/data/data_source/sign_up/sign_up_data_source.dart';
import 'package:moments/domain/model/user_profile.dart';

class SignUpDataSourceImpl implements SignUpDataSource {
  @override
  Future<UserProfile> createUser(
      {required String uid,
      required String birth,
      required String role,
      required String familyCode,
      String? image,
      String? prefix}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<String> signUp({required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
