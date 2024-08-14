import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moments/ui/styles/color_styles.dart';
import 'package:moments/ui/styles/size_config.dart';

class BottomNaviBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) changeTap;

  const BottomNaviBar({
    super.key,
    required this.currentIndex,
    required this.changeTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: ColorStyles.white,
      notchMargin: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildNavItem('assets/icons/bottom_navi/calendar_inactive.svg',
              'assets/icons/bottom_navi/calendar_active.svg', 0),
          _buildNavItem('assets/icons/bottom_navi/chat_inactive.svg',
              'assets/icons/bottom_navi/chat_active.svg', 1),
          _buildNavItem('assets/icons/bottom_navi/album_inactive.svg',
              'assets/icons/bottom_navi/album_active.svg', 2),
          _buildNavItem('assets/icons/bottom_navi/profile_inactive.svg',
              'assets/icons/bottom_navi/profile_active.svg', 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      String inactiveIconPath, String activeIconPath, int index) {
    final isSelected = currentIndex == index;

    return MaterialButton(
      onPressed: () => changeTap(index),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SvgPicture.asset(
        isSelected ? activeIconPath : inactiveIconPath,
        height: getHeight(25),
        width: getWidth(25),
      ),
    );
  }
}
