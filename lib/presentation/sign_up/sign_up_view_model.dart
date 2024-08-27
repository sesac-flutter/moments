import 'package:flutter/material.dart';
import 'package:moments/domain/use_case/sign_up_use_case.dart';
import 'package:moments/presentation/sign_up/sign_up_state.dart';

class SignUpViewModel with ChangeNotifier {
  final SignUpUseCase signUpUseCase;

  SignUpViewModel({
    required this.signUpUseCase,
  });

  SignUpState _state = const SignUpState();

  SignUpState get state => _state;

  void getEmail(String email) async {
    _state = state.copyWith(email: email);
    // notifyListeners();
  }

  void getPassword(String password) async {
    _state = state.copyWith(password: password);
    // notifyListeners();
  }

  void confirmPassword(String password, VoidCallback callBack) async {
    if (password == _state.password) {
      callBack();
    } else {
      print('wrong password');
    }
  }

  //임시
  void generateFamilyCode() {
    _state = state.copyWith(
        familyCode: DateTime.now().toString().replaceAll(' ', ''));
  }

  void getFamilyCode(String familyCode) {
    _state = state.copyWith(familyCode: familyCode);
    // notifyListeners();
  }

  void getRole(String role) {
    _state = state.copyWith(role: role);
    // notifyListeners();
  }

  void getBirth(String birth) {
    _state = state.copyWith(birth: birth);
    // notifyListeners();
  }

  void getPrefix(String prefix) {
    _state = state.copyWith(prefix: prefix);
    // notifyListeners();
  }

  Future<void> signUp() async {
    await signUpUseCase.execute(
        email: _state.email,
        password: _state.password,
        birth: _state.birth,
        role: _state.role,
        familyCode: _state.familyCode,
        prefix: _state.prefix);
    // notifyListeners();
  }
}
