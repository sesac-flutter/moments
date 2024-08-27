import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/ui/common_components/default_btn.dart';
import 'package:moments/ui/styles/color_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/splash_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 300,
            child: Text(
              '가족의 순간이 추억으로 변하는 곳',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.white),
            ),
          ),
          const Positioned(
            top: 310,
            child: Text(
              'MOMENTS',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.white),
            ),
          ),
          Positioned(
              top: 780,
              child: DefaultBtn(
                text: '시작하기',
                onPressed: () {
                  context.go('/log_in');
                },
              )),
        ],
      ),
    );
  }
}
