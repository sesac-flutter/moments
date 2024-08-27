import 'package:moments/domain/model/user_profile.dart';

abstract interface class SignUpRepository {
  Future<UserProfile> signUpUser({
    required String email,
    required String password,
    required String birth,
    required String role,
    required String familyCode,
    String? image,
    String? prefix,
  });
}
