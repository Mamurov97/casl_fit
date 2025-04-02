import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import '../basic_widgets.dart';

class ExitDialog extends StatelessWidget {
  const ExitDialog({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      backgroundColor: AppTheme.colors.secondary.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppIcons.exitIcon),
          SizedBox(height: 20.h),
          Text(
            "profile.exit_dialog_text".tr(),
            textAlign: TextAlign.center,
            style: AppTheme.data.textTheme.bodyMedium!.copyWith(color: Colors.grey),
          ),
          Gap(18.h),
          Row(
            children: [
              Expanded(
                  child: MainButton(
                backgroundColor: AppTheme.colors.black,
                text: 'profile.back_to".tr()',
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
              Gap(12.w),
              Expanded(
                  child: MainButton(
                backgroundColor: AppTheme.colors.red,
                text: "profile.exit".tr(),
                onPressed: () {
                  onPressed();
                },
              )),
            ],
          )
        ],
      ),
    );
  }
}
