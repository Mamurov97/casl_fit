import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vibration/vibration.dart';

import '../../../../application/auth/passcode/passcode_cubit.dart';

class PasscodeField extends StatelessWidget {
  const PasscodeField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: BlocConsumer<PasscodeCubit, PasscodeState>(
        listener: (context, state) {
          if (state.isIncorrectPasscode) {
            Vibration.vibrate();
            Future.delayed(const Duration(milliseconds: 350), () {
              if (context.mounted) {
                context.read<PasscodeCubit>().clearIncorrectField();
              }
            });
          }
        },
        builder: (context, state) {
          return Shake(
            key: ValueKey<bool>(state.isIncorrectPasscode),
            preferences: AnimationPreferences(
              autoPlay: state.isIncorrectPasscode ? AnimationPlayStates.Forward : AnimationPlayStates.None,
              duration: const Duration(milliseconds: 600),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 1; i < 5; i++)
                  Container(
                    width: 30.w,
                    padding: EdgeInsets.only(bottom: ScreenSize.h16),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: ScreenSize.w14,
                      height: ScreenSize.w14,
                      decoration: BoxDecoration(
                        color: state.isIncorrectPasscode
                            ? theme.colorScheme.error
                            : state.filledInputCount >= i
                                ? CupertinoColors.activeGreen
                                : Colors.white24,
                        shape: BoxShape.circle,
                      ),
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
