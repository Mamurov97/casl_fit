import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.type, required this.text, required this.icon, required this.value,this.onPressed});

  final String icon;
  final String type;
  final String text;
  final String value;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
        child: Container(
          margin: EdgeInsets.all(2.w),
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 28.w),
          decoration: BoxDecoration(
            color: AppTheme.colors.secondary,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    height: 16.sp,
                    colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn), // Replace with AppTheme.colors.primary
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              EasyRichText(
                "$value $type",
                textAlign: TextAlign.center,
                defaultStyle: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.white),
                patternList: [
                  EasyRichTextPattern(
                    targetString: value,
                    style: AppTheme.data.textTheme.titleMedium!.copyWith(color: AppTheme.colors.white, fontSize: 13.sp),
                  ),
                  EasyRichTextPattern(
                    targetString: type,
                    style: AppTheme.data.textTheme.titleSmall!.copyWith(color: Colors.white60, fontSize: 11.sp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
