import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/presentation/sign_up/components/input_text_field.dart';
import 'package:moments/presentation/sign_up/components/obscure_text_field.dart';
import 'package:moments/presentation/sign_up/components/sign_up_info.dart';
import 'package:moments/presentation/sign_up/sign_up_view_model.dart';
import 'package:moments/ui/common_components/default_btn.dart';
import 'package:moments/ui/styles/size_config.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SignUpViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignUpInfo(info: '계정정보'),
          InputTextField(
            title: '아이디',
            hinText: '아이디를 입력해주세요.',
            controller: emailController,
          ),
          ObscureTextField(
            title: '비밀번호',
            hinText: '비밀번호를 입력해주세요',
            controller: passwordController,
          ),
          ObscureTextField(
            title: '비밀번호 확인',
            hinText: '비밀번호를 입력해주세요',
            controller: confirmPasswordController,
          ),
          DefaultBtn(
              width: getWidth(335),
              height: getHeight(56),
              text: '다음',
              onPressed: () {
                viewModel.getEmail(emailController.text);
                viewModel.getPassword(passwordController.text);
                viewModel.confirmPassword(confirmPasswordController.text, () {
                  context.push('/ask_code');
                });
                // viewModel.signUpForTest();
              }),
        ],
      ),
    );
  }
}
