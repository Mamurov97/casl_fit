import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_svg/svg.dart';

class IconButtonX extends StatelessWidget {
  const IconButtonX({
    super.key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.margin,
    this.iconColor,
    this.height,
  });

  final String icon;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final EdgeInsets? margin;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: onPressed,
      duration: const Duration(milliseconds: 200),
      child: Container(
        margin: margin,
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: backgroundColor ?? AppTheme.colors.primary,
        ),
        child: SvgPicture.asset(
          icon,
          height: height ?? 20.h,
          colorFilter: ColorFilter.mode(
            iconColor ?? Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
