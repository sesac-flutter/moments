import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:moments/data/data_source/sign_up/sign_up_data_source.dart';
import 'package:moments/domain/model/user_profile.dart';

class SignUpDataSourceImpl implements SignUpDataSource {
  final db = FirebaseFirestore.instance;

  @override
  Future<String> signUp(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!.uid;
    } catch (e) {
      return ('error');
    }
  }

  @override
  Future<UserProfile> createUser({
    required String uid,
    required String birth,
    required String role,
    required String familyCode,
    String? image,
    String? prefix,
  }) async {
    final userProfile = UserProfile(
      uid: uid,
      birth: birth,
      familyCode: familyCode,
      role: role,
    );
    await db.collection('user').doc(uid).set({
      'uid': uid,
      'birth': birth,
      'familyCode': familyCode,
      'role': role,
      'image': image,
      'prefix': prefix
    });
    return userProfile;
  }
}
