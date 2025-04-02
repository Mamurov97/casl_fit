import 'dart:math';

import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/assets/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlanItem extends StatefulWidget {
  final String title;
  final String icon;
  final bool hasSwitch;
  final bool switchValue;
  final bool isExpanded ;
  final ValueChanged<bool>? onSwitchChanged;
  final VoidCallback onPressed;
  const PlanItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.isExpanded = false,
    this.hasSwitch = false,
    this.switchValue = false,
    this.onSwitchChanged,
  });

  @override
  State<PlanItem> createState() => _PlanItemState();
}

class _PlanItemState extends State<PlanItem> {
  @override
  Widget build(BuildContext context) {
    bool switchChange = widget.switchValue;
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  widget.icon,
                  height: 16.r,
                  colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn), // Replace with AppTheme.colors.primary
                ),
                const SizedBox(width: 10),
                Text(
                  widget.title,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            widget.hasSwitch
                ? SizedBox(
                    width: 40.0,
                    height: 20.0,
                    child: CupertinoSwitch(
                      activeColor: AppTheme.colors.primary,
                      thumbColor: AppTheme.colors.secondary,
                      value: switchChange,
                      onChanged: (value) {
                        switchChange = value;
                        setState(() {});
                      },
                    ),
                  )
                : Container(
                    padding: EdgeInsets.all(6.r),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:AnimatedRotation(
                      turns: widget.isExpanded ? 0.25 : 0,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.easeInOut,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 10.r,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
