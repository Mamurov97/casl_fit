import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:casl_fit/application/auth/passcode/passcode_cubit.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/domain/common/enums/passcode_step.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';

import 'components/passcode_field.dart';
import 'components/passcode_keyboard.dart';

class SetPasscodePage extends StatelessWidget {
  const SetPasscodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PasscodeCubit>(
      create: (context) => PasscodeCubit(passcodeStep: PasscodeStep.create),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Gap(35.h),
                  Gap(40.h),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BlocConsumer<PasscodeCubit, PasscodeState>(listener: (context, state) {
                      if (state.isProcessCompleted) {
                        SharedPrefService.initialize().then((pref) {
                          pref
                            ..setAuthStatus(true)
                            ..setPasscode(state.passcodeOne.substring(0, 4));
                        });
                        UserData.authStatus = true;
                        if (UserData.role == "user") {
                        } else {}
                      }
                    }, builder: (context, state) {
                      return Text(
                        state.passcodeStep == PasscodeStep.create ? "passcode.set_passcode".tr() : "passcode.confirm_passcode".tr(),
                        style: AppTheme.data.textTheme.displayLarge,
                      );
                    }),
                  ),
                  Gap(40.h),
                  const PasscodeField(),
                  Gap(60.h),
                  const PasscodeKeyboard()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
