import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:casl_fit/application/auth/passcode/passcode_cubit.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:vibration/vibration.dart';

class PasscodeField extends StatelessWidget {
  const PasscodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: BlocConsumer<PasscodeCubit, PasscodeState>(listener: (context, state) {
        if (state.isIncorrectPasscode) {
          Vibration.vibrate();
          Future.delayed(const Duration(milliseconds: 350), () {
            if(context.mounted){
              context.read<PasscodeCubit>().clearIncorrectField();
            }
          });
        }
      }, builder: (context, state) {
        return Shake(
          key: ValueKey<bool>(state.isIncorrectPasscode),
          preferences: AnimationPreferences(
            autoPlay:
                state.isIncorrectPasscode ? AnimationPlayStates.Forward : AnimationPlayStates.None,
            duration: const Duration(milliseconds: 600),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: 48.w,
                  padding: EdgeInsets.only(bottom: ScreenSize.h16),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: state.isIncorrectPasscode
                            ? AppTheme.colors.red
                            : state.filledInputCount >= i
                                ? AppTheme.colors.primary
                                : Colors.grey.shade300,
                      ),
                    ),
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: state.filledInputCount >= i ? ScreenSize.w14 : ScreenSize.w10,
                    height: state.filledInputCount >= i ? ScreenSize.w14 : ScreenSize.w10,
                    margin: EdgeInsets.symmetric(horizontal: ScreenSize.w10),
                    decoration: BoxDecoration(
                      color: state.isIncorrectPasscode
                          ? AppTheme.colors.red
                          : state.filledInputCount >= i
                              ? AppTheme.colors.primary
                              : Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}
