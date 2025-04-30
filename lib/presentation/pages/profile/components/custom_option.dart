import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomProfileOption extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final Color textColor;

   const CustomProfileOption({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,

    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) ),
      child: Card(
        color: AppTheme.colors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: ListTile(
            leading:    SvgPicture.asset(
              icon,
              height: 24.r,
              colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
            ),
            title: Text(
              title,
              style: TextStyle(color: textColor,fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor,
              size: 16,
            ),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
