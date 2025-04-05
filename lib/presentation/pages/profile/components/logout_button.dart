import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../assets/res/app_assets.dart';
import '../../../assets/theme/app_theme.dart';
import '../../../components/dialogs/exit_dialog.dart';
import '../../../routes/entity/routes.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key, required this.prefService});
 final SharedPrefService prefService;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.colors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (contextD) => ExitDialog(
            onPressed: () async {
              var passCode = prefService.passcode;
              prefService.clear();
              prefService.setPasscode(passCode);
              prefService.setAuthStatus(true);
              context.go(Routes.signIn.path);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.logout,
              height: 16.sp,
              colorFilter: ColorFilter.mode(AppTheme.colors.secondary, BlendMode.srcIn),
            ),
            const SizedBox(width: 8),
            Text(
              'profile.logout'.tr(),
              style: TextStyle(color: AppTheme.colors.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
