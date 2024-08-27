import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/presentation/sign_up/components/input_text_field.dart';
import 'package:moments/presentation/sign_up/components/sign_up_info.dart';
import 'package:moments/presentation/sign_up/sign_up_view_model.dart';
import 'package:moments/ui/common_components/default_btn.dart';
import 'package:moments/ui/styles/size_config.dart';
import 'package:provider/provider.dart';

class RequiredInfoScreen extends StatefulWidget {
  const RequiredInfoScreen({super.key});

  @override
  State<RequiredInfoScreen> createState() => _RequiredInfoScreenState();
}

class _RequiredInfoScreenState extends State<RequiredInfoScreen> {
  final TextEditingController roleController = TextEditingController();
  final TextEditingController birthController = TextEditingController();

  @override
  void dispose() {
    roleController.dispose();
    birthController.dispose();
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
          SignUpInfo(info: '필수 정보'),
          InputTextField(
            title: '가족 구성원 역할 선택',
            hinText: '역할',
            controller: roleController,
          ),
          InputTextField(
            title: '생년월일',
            hinText: 'YYYY-MM-DD',
            controller: birthController,
          ),
          DefaultBtn(
              width: getWidth(335),
              height: getHeight(56),
              text: '다음',
              onPressed: () {
                viewModel.getRole(roleController.text);
                viewModel.getBirth(birthController.text);
                context.push('/optional_info');
              }),
        ],
      ),
    );
  }
}
