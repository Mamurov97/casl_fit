import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefinitionItem extends StatelessWidget {
  final String icon;
  final String title;
  final String value;

  const DefinitionItem({super.key, required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: 32.r,
            colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTheme.data.textTheme.titleSmall?.copyWith(color: Colors.white70, fontSize: 11.sp)),
                SizedBox(height: 2.h),
                Text(value, style: AppTheme.data.textTheme.titleSmall?.copyWith(color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
