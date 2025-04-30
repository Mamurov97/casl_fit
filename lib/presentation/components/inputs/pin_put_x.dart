import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PintPutX extends StatelessWidget {
  const PintPutX({
    super.key,
    this.onComplete,
    required this.controller,
  });

  final Function(String)? onComplete;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 48.w,
        height: 62.h,
        textStyle: AppTheme.data.textTheme.titleLarge!.copyWith(color: AppTheme.colors.white),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 2, color: AppTheme.colors.primary))));

    return Pinput(
      length: 4,
      autofocus: true,
      cursor: ColoredBox(
        color: AppTheme.colors.primary,
        child: SizedBox(
          width: 1.5,
          height: 20.h,
        ),
      ),
      controller: controller,
      defaultPinTheme: defaultPinTheme,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      focusedPinTheme: defaultPinTheme,
      submittedPinTheme: defaultPinTheme,
      errorPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: AppTheme.colors.red),
      )),
      onCompleted: onComplete,
    );
  }
}
