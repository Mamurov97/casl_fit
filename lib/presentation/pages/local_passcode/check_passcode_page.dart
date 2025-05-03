import 'dart:ui';

import 'package:casl_fit/application/local_passcode/passcode_cubit.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/basic_widgets.dart';
import 'components/passcode_field.dart';
import 'components/passcode_keyboard.dart';

class CheckPasscodePage extends StatefulWidget {
  const CheckPasscodePage({super.key});

  @override
  State<CheckPasscodePage> createState() => _CheckPasscodePageState();
}

class _CheckPasscodePageState extends State<CheckPasscodePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PasscodeCubit>(
      create: (context) => PasscodeCubit()..checkBiometricAuth(),
      child: Builder(
        builder: (context) {
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
                    color: Colors.black.withValues(alpha: 0.4),
                    height: 1.sh,
                    width: 1.sw,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: BlocConsumer<PasscodeCubit, PasscodeState>(
                        listener: (context, state) {
                          if (state.isProcessCompleted) {
                            if (context.mounted) {
                              context.go("${Routes.root.path}${Routes.home.path}");
                            }
                          }
                        },
                        builder: (context, state) {
                          return Text(
                            tr('passcode.enter_passcode'),
                            style: Theme
                                .of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(fontSize: 20.sp, color: Colors.white),
                          );
                        },
                      ),
                    ),
                    Gap(25.h),
                    const PasscodeField(),
                    Gap(25.h),
                    const PasscodeKeyboard(),
                    Gap(30.h + kBottomNavigationBarHeight),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
