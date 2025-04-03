import 'package:casl_fit/infrastructure/common/platform_info.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget child;
    if (!PlatformInfo.isIOS) {
      child = SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(AppTheme.colors.primary.withValues(alpha: 0.4))),
              Gap(10.h),
              Text('loading'.tr(), style: TextStyle(color: AppTheme.colors.primary.withValues(alpha: 0.4))),
            ],
          ),
        ),
      );
    } else {
      child = SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoActivityIndicator(color: AppTheme.colors.primary),
              Gap(10.h),
              Text('loading'.tr(), style: TextStyle(color: AppTheme.colors.primary.withValues(alpha: 0.4))),
            ],
          ),
        ),
      );
    }

    return Material(
      color: Colors.transparent,
      child: child,
    );
  }
}
