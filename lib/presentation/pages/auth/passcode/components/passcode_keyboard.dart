import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:casl_fit/application/auth/passcode/passcode_cubit.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';

class PasscodeKeyboard extends StatelessWidget {
  const PasscodeKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final keyboardSize = 0.2.sw;

    return Column(
      children: [
        SizedBox(
          width: 0.8.sw,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: ScreenSize.w12,
            children: List.generate(9, (index) {
              return keyboard('${index + 1}', context, keyboardSize);
            }),
          ),
        ),

        SizedBox(
          width: 0.8.sw,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Gap(keyboardSize + ScreenSize.w12),

                keyboard('0', context, keyboardSize),

                RawMaterialButton(
                  onPressed: () {
                    context.read<PasscodeCubit>().onBackspacePressed();
                  },
                  shape: const CircleBorder(),
                  child: Container(
                    width: keyboardSize,
                    height: keyboardSize,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: ScreenSize.w6,
                      bottom: ScreenSize.h10,
                      right: ScreenSize.w6
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget keyboard(String text, BuildContext context, double size) {
    return RawMaterialButton(
      onPressed: () => context.read<PasscodeCubit>().fillInput(text),
      shape: const CircleBorder(),
      child: Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: ScreenSize.h4,
          bottom: ScreenSize.h4,
          left: ScreenSize.w6,
          right: ScreenSize.w6
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppTheme.colors.primary
          )
        ),
        child: Text(
          text,
          style: AppTheme.data.textTheme.displaySmall?.copyWith(
            fontSize: 28.sp,
          )
        ),
      ),
    );
  }
}
