import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart' as persistent;

import '../../assets/theme/app_theme.dart';

class CustomNavBar extends StatelessWidget {
  final persistent.NavBarConfig navBarConfig;
  final persistent.NavBarDecoration navBarDecoration;

  const CustomNavBar({
    super.key,
    required this.navBarConfig,
    this.navBarDecoration = const persistent.NavBarDecoration(),
  });

  Widget _buildItem(persistent.ItemConfig item, bool isSelected) {
    final title = item.title;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        isSelected ? item.icon : item.inactiveIcon,
        if (title != null)
          Material(
            type: MaterialType.transparency,
            child: FittedBox(
              child: Text(
                title,
                style: item.textStyle.apply(
                  color: isSelected ? item.activeForegroundColor : item.inactiveForegroundColor,
                ),
              ),
            ),
          ),
        SizedBox(height: 18.h)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedNavBar(
      decoration: persistent.NavBarDecoration(
        color: AppTheme.colors.secondary,
        padding: EdgeInsets.only(top: 15.h),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      height: navBarConfig.navBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (final (index, item) in navBarConfig.items.indexed)
            Expanded(
              child: InkWell(
                // This is the most important part. Without this, nothing would happen if you tap on an item.
                onTap: () => navBarConfig.onItemSelected(index),
                child: _buildItem(item, navBarConfig.selectedIndex == index),
              ),
            ),
        ],
      ),
    );
  }
}

class DecoratedNavBar extends StatelessWidget {
  DecoratedNavBar({
    required this.child,
    super.key,
    this.decoration = const persistent.NavBarDecoration(),
    ImageFilter? filter,
    this.opacity = 1.0,
    this.height = kBottomNavigationBarHeight,
  }) : filter = filter ?? ImageFilter.blur(sigmaX: 3, sigmaY: 3);

  final persistent.NavBarDecoration decoration;
  final ImageFilter filter;
  final Widget child;
  final double opacity;
  final double height;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          if (opacity < 1)
            Positioned.fill(
              child: ClipRect(
                child: BackdropFilter(
                  filter: decoration.filter ?? filter,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          DecoratedBox(
            decoration: decoration.copyWith(
              color: decoration.color?.withOpacity(opacity),
            ),
            child: Container(
              padding: decoration.padding,
              // height: height - decoration.borderHeight(),
              child: child,
            ),
          ),
        ],
      );
}
