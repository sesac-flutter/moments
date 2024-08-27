import 'package:flutter/material.dart';

class SignUpInfo extends StatelessWidget {
  final String info;

  const SignUpInfo({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$info를'),
          const Text('입력해주세요.'),
        ],
      ),
    );
  }
}
