import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/presentation/sign_up/components/input_text_field.dart';
import 'package:moments/presentation/sign_up/components/obscure_text_field.dart';
import 'package:moments/ui/common_components/default_btn.dart';
import 'package:moments/ui/styles/size_config.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('로그인'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InputTextField(title: '아이디', hinText: '아이디를 입력해주세요'),
          const ObscureTextField(title: '비밀번호', hinText: '비밀번호를 입력해주세요'),
          Center(
            child: DefaultBtn(
              text: '로그인',
              onPressed: () {
                context.go('main_page');
              },
              width: getWidth(335),
              height: getHeight(56),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
                onTap: () {
                  context.push('/sign_up');
                },
                child: const Text('아직 회원이 아니신가요?')),
          ),
        ],
      ),
    );
  }
}
