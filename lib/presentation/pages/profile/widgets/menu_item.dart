import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/assets/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String icon;
  final bool hasSwitch;
  final bool switchValue;
  final ValueChanged<bool>? onSwitchChanged;

  const MenuItem({
    Key? key,
    required this.title,
    required this.icon,
    this.hasSwitch = false,
    this.switchValue = false,
    this.onSwitchChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: Colors.grey[850], // Replace with AppTheme.colors.secondary if needed
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  height: 16.r,
                  colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn), // Replace with AppTheme.colors.primary
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            hasSwitch
                ? SizedBox(
                    width: 40.0,
                    height: 20.0,
                    child: Switch(
                      value: switchValue,
                      onChanged: onSwitchChanged,
                    ),
                  )
                : Container(
                    padding: EdgeInsets.all(6.r),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 12.0,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
