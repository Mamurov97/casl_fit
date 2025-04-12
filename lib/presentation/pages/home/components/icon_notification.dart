import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class IconNotificationButton extends StatelessWidget {
  const IconNotificationButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.margin,
    this.iconColor,
    this.count = 0,
  });

  final String icon;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final EdgeInsets? margin;
  final int count;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 42.w,
            height: 42.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: backgroundColor ?? Colors.transparent,
            ),
            margin: margin,
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(
                iconColor ?? Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          if (count > 0)
            Positioned(
              right: 14.w,
              top: 8.h,
              child: Container(
                margin: margin,
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                constraints: BoxConstraints(
                  minWidth: 6.w,
                  minHeight: 6.h,
                ),
                child: Visibility(
                  visible: false,
                  child: Center(
                    child: Text(
                      '$count',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
