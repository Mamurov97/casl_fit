import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatelessWidget {
  final String? error;
  final String? buttonTitle;
  final VoidCallback onPressed;

  const ErrorPage({
    super.key,
    this.error,
    this.buttonTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            'assets/animations/error.json',
            height: 0.3.sh,
          ),
          Text(
            error ?? tr('errors.unknown'),
            style: AppTheme.data.textTheme.titleLarge,
          ),
          MainButton(
            margin: EdgeInsets.symmetric(horizontal: 75.w).copyWith(top: 15.h),
            text: tr('errors.retry'),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
