import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../application/auth/passcode/passcode_cubit.dart';
import '../../../domain/common/data/user_data.dart';
import '../../../domain/common/enums/passcode_step.dart';
import '../../../infrastructure/services/shared_service.dart';
import '../../components/basic_widgets.dart';
import '../../routes/entity/routes.dart';
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
            body:Stack(
              children: [
               // const Background(),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(120.h),
                     /* Image.asset(
                        AppImages.logoWhite,
                        color: Colors.white,
                        height: 150.h,
                      ),*/
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BlocConsumer<PasscodeCubit, PasscodeState>(
                          listener: (context, state) {
                            if (state.isProcessCompleted) {
                              SharedPrefService.initialize().then((pref) {
                                pref
                                  ..setPinStatus(true)
                                  ..setPasscode(state.passcodeOne.substring(0, 4));
                              });
                              UserData.authStatus = true;

                              if (context.mounted) {
                                context.go(Routes.home.path);
                              }
                              //Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => const Root()), (route) => false);
                            }
                          },
                          builder: (context, state) {
                            return Text(
                              state.passcodeStep == PasscodeStep.create ? "passcode.set_passcode".tr() : "passcode.confirm_passcode".tr(),
                              style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 20.sp, color: Colors.white),
                            );
                          },
                        ),
                      ),
                      Gap(25.h),
                      const PasscodeField(),
                      Gap(25.h),
                      const PasscodeKeyboard()
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
