import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AppImages.background,
        height: 1.sh,
        width: 1.sw,
        fit: BoxFit.cover,
        alignment: Alignment.center,
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
