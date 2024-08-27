import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/presentation/sign_up/sign_up_view_model.dart';
import 'package:moments/ui/common_components/default_btn.dart';
import 'package:moments/ui/styles/size_config.dart';
import 'package:provider/provider.dart';

class AskFamilyCodeScreen extends StatefulWidget {
  const AskFamilyCodeScreen({super.key});

  @override
  State<AskFamilyCodeScreen> createState() => _AskFamilyCodeScreenState();
}

class _AskFamilyCodeScreenState extends State<AskFamilyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SignUpViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('이미 등록된 가족이 있나요?'),
          const SizedBox(
            height: 200,
          ),
          DefaultBtn(
            text: '네, 있습니다.',
            onPressed: () {
              context.push('/family_code');
            },
            width: getWidth(335),
            height: getHeight(56),
          ),
          DefaultBtn(
              text: '아니요, 없습니다.',
              onPressed: () {
                viewModel.generateFamilyCode();
                context.push('/required_info');
              }),
        ],
      ),
    );
  }
}
