import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moments/ui/styles/color_styles.dart';
import 'package:moments/ui/styles/size_config.dart';

class DefaultBtn extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final bool isActive;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? btnColor;
  final Color? textColor;
  final bool? hasIcon;
  final String? iconPath;
  final double? iconSize;

  const DefaultBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.isActive = true,
    this.width,
    this.height,
    this.fontSize,
    this.btnColor,
    this.textColor,
    this.hasIcon,
    this.iconPath,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isActive ? onPressed : null,
      style: TextButton.styleFrom(
        foregroundColor: isActive ? ColorStyles.white : ColorStyles.gray2,
        backgroundColor:
            isActive ? btnColor ?? ColorStyles.primary : ColorStyles.gray4,
        minimumSize: Size(
          width ?? getWidth(335),
          height ?? getHeight(56),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize ?? getHeight(16),
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
            ),
          ),
          if (hasIcon != null) ...[
            SizedBox(width: getWidth(16)),
            SvgPicture.asset(
              iconPath ?? '',
              width: iconSize ?? getWidth(20),
              height: iconSize ?? getHeight(20),
              colorFilter:
                  const ColorFilter.mode(ColorStyles.white, BlendMode.srcIn),
            ),
          ],
        ],
      ),
    );
  }
}
