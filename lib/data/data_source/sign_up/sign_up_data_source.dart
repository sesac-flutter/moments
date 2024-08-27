import 'package:moments/domain/model/user_profile.dart';

abstract interface class SignUpDataSource {
  Future<String> signUp({required String email, required String password});

  Future<UserProfile> createUser({
    required String uid,
    required String birth,
    required String role,
    required String familyCode,
    String? image,
    String? prefix,
  });
}
