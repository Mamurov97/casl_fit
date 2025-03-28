import 'package:casl_fit/application/auth/passcode/passcode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';

import '../../../../domain/common/data/user_data.dart';
import 'components/passcode_field.dart';
import 'components/passcode_keyboard.dart';

class CheckPasscodePage extends StatefulWidget {
  const CheckPasscodePage({super.key});

  @override
  State<CheckPasscodePage> createState() => _CheckPasscodePageState();
}

class _CheckPasscodePageState extends State<CheckPasscodePage> {
  int forDeveloper = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PasscodeCubit>(
      create: (context) => PasscodeCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                      color: Colors.transparent,
                    ),
                  ),
                  Gap(40.h),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BlocConsumer<PasscodeCubit, PasscodeState>(
                      listener: (context, state) {
                        if (state.isProcessCompleted) {
                          if(UserData.role == "user") {
                          }else{
                          }
                        }
                      },
                      builder: (context, state) {
                        return Text(
                          tr('passcode.enter_passcode'),
                          style: AppTheme.data.textTheme.displayLarge,
                        );
                      },
                    ),
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
