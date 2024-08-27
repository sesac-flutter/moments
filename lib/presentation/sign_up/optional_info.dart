import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/presentation/sign_up/components/input_text_field.dart';
import 'package:moments/presentation/sign_up/components/sign_up_info.dart';
import 'package:moments/presentation/sign_up/sign_up_view_model.dart';
import 'package:moments/ui/common_components/default_btn.dart';
import 'package:provider/provider.dart';

class OptionalInfoScreen extends StatefulWidget {
  const OptionalInfoScreen({super.key});

  @override
  State<OptionalInfoScreen> createState() => _OptionalInfoScreenState();
}

class _OptionalInfoScreenState extends State<OptionalInfoScreen> {
  final TextEditingController prefixController = TextEditingController();

  @override
  void dispose() {
    prefixController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SignUpViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SignUpInfo(info: '선택 정보'),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          InputTextField(
            title: '수식어',
            hinText: '나는 어떤 가족인가요?',
            controller: prefixController,
          ),
          DefaultBtn(
              text: '완료하기',
              onPressed: () async {
                viewModel.getPrefix(prefixController.text);
                await viewModel.signUp();
                if (context.mounted) {
                  context.go('/main');
                }
              }),
        ],
      ),
    );
  }
}
