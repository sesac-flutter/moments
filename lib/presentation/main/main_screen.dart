import 'package:flutter/material.dart';
import 'package:moments/presentation/main/components/bottom_navi_bar.dart';
import 'package:moments/presentation/main/main_screen_view_model.dart';
import 'package:moments/ui/styles/color_styles.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainScreenViewModel>();
    return Scaffold(
        backgroundColor: ColorStyles.background,
        body: SafeArea(
            child: IndexedStack(
          index: viewModel.currentIndex,
          children: viewModel.screens,
        )),
        bottomNavigationBar: BottomNaviBar(
          currentIndex: viewModel.currentIndex,
          changeTap: viewModel.changeIndex,
        ));
  }
}
