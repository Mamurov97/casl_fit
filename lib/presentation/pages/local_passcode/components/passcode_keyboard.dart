import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../application/local_passcode/passcode_cubit.dart';
import '../../../../domain/common/enums/passcode_step.dart';
import '../../../assets/asset_index.dart';

class PasscodeKeyboard extends StatelessWidget {
  const PasscodeKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'fingerprint', '0', 'backspace'];

    return BlocBuilder<PasscodeCubit, PasscodeState>(
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state.filledInputCount > 3,
          child: GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: ScreenSize.h16,
            crossAxisSpacing: ScreenSize.w16,
            childAspectRatio: 1,
            children: keys.map((key) {
              if (key == 'fingerprint') {
                return keyboardIcon(AppIcons.fingerprint, context, () => context.read<PasscodeCubit>().checkBiometricAuth(), state.passcodeStep == PasscodeStep.check);
              } else if (key == 'backspace') {
                return keyboardIcon(AppIcons.backspace, context, () => context.read<PasscodeCubit>().onBackspacePressed(), true);
              } else {
                return keyboardText(key, context);
              }
            }).toList(),
          ),
        );
      },
    );
  }

  Widget keyboardText(String text, BuildContext context) {
    final theme = Theme.of(context);
    return RawMaterialButton(
      onPressed: () => context.read<PasscodeCubit>().fillInput(text),
      shape: const CircleBorder(),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white12
        ),
        child: Text(
          text,
          style: theme.textTheme.displaySmall?.copyWith(fontSize: 28.sp, color: Colors.white),
        ),
      ),
    );
  }

  Widget keyboardIcon(String icon, BuildContext context, VoidCallback onPressed, bool visible) {
    return Visibility(
      visible: visible,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: const CircleBorder(),
        child: Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            icon,
            height: 35.h,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
