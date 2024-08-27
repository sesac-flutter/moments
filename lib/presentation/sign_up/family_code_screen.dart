import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/presentation/sign_up/components/input_text_field.dart';
import 'package:moments/presentation/sign_up/components/sign_up_info.dart';
import 'package:moments/presentation/sign_up/sign_up_view_model.dart';
import 'package:moments/ui/common_components/default_btn.dart';
import 'package:moments/ui/styles/size_config.dart';
import 'package:provider/provider.dart';

class FamilyCodeScreen extends StatefulWidget {
  const FamilyCodeScreen({super.key});

  @override
  State<FamilyCodeScreen> createState() => _FamilyCodeScreenState();
}

class _FamilyCodeScreenState extends State<FamilyCodeScreen> {
  final TextEditingController codeController = TextEditingController();

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SignUpViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SignUpInfo(info: '가족코드'),
          InputTextField(
            title: '가족코드',
            hinText: '가족코드를 입력하세요',
            controller: codeController,
          ),
          const SizedBox(
            height: 200,
          ),
          Center(
            child: DefaultBtn(
                width: getWidth(335),
                height: getHeight(56),
                text: '다음',
                onPressed: () {
                  viewModel.getFamilyCode(codeController.text);
                  context.push('/required_info');
                }),
          ),
        ],
      ),
    );
  }
}
