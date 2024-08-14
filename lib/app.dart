import 'package:flutter/material.dart';
import 'package:moments/config/routes.dart';
import 'package:moments/ui/styles/color_styles.dart';
import 'package:moments/ui/styles/size_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp.router(
      title: 'Moments',
      theme: ThemeData(
          useMaterial3: true,
          primaryColor: ColorStyles.primary,
          fontFamily: 'Pretendard'),
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.router,
    );
  }
}
