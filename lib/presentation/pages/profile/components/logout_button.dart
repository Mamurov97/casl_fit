import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../assets/res/app_assets.dart';
import '../../../assets/theme/app_theme.dart';
import '../../../components/dialogs/exit_dialog.dart';
import '../../../routes/entity/routes.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({
    super.key,
  });

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  late SharedPrefService prefService;

  @override
  void initState() {
    getPref();
    super.initState();
  }

  void getPref() async {
    prefService = await SharedPrefService.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (contextD) => ExitDialog(
            onPressed: () async {
              var passCode = prefService.passcode;
              prefService.clear();
              prefService.setPasscode(passCode);
              prefService.setAuthStatus(false);
              context.go(Routes.signIn.path);
            },
          ),
        );
      },
      icon: SvgPicture.asset(
        AppIcons.logout,
        height: 25.sp,
        colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
      ),
    );
  }
}
