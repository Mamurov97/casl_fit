import 'dart:ui';

import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.background,
            height: 1.sh,
            width: 1.sw,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withValues(alpha: 0.3),
              height: 1.sh,
              width: 1.sw,
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tr('errors.coming_soon'),
            style: AppTheme.data.textTheme.headlineMedium!.copyWith(color: AppTheme.colors.primary),
          ),
          Gap(10.h),
          Text(
            tr('errors.technical_works'),
            style: AppTheme.data.textTheme.headlineMedium!.copyWith(color: Colors.white.withValues(alpha: 0.7), fontSize: 16.sp),
          ),
          Gap(30.h),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
