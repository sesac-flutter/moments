import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String uid,
    required String birth,
    required String familyCode,
    required String role,
    String? image,
    String? prefix,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, Object?> json) => _$UserProfileFromJson(json);
}