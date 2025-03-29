import 'package:casl_fit/application/auth/init/auth_bloc.dart';
import 'package:casl_fit/domain/common/second_to_time.dart';
import 'package:casl_fit/presentation/components/inputs/pin_put_x.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  bool showCountDown = true;

  @override
  Widget build(BuildContext context) {
    return DeFocus(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Stack(
              children: [
                Image.asset(
                  AppImages.background,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: const Color(0xFF313230).withValues(alpha: 0.5),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 12.w).copyWith(top: 20.h),
                    padding: EdgeInsets.all(14.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'verify.verify_code'.tr(),
                          style: AppTheme.data.textTheme.headlineMedium,
                        ),
                        Gap(0.012.sh),
                        EasyRichText(
                          tr(
                            'verify.sms_send',
                            namedArgs: {'phone': "+998901234567"},
                          ),
                          textAlign: TextAlign.center,
                          defaultStyle: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.black),
                          patternList: [
                            EasyRichTextPattern(
                              targetString: "+998901234567",
                              hasSpecialCharacters: true,
                              urlType: 'tel',
                              style: AppTheme.data.textTheme.bodyLarge!.copyWith(
                                color: AppTheme.colors.primary,
                              ),
                            ),
                            EasyRichTextPattern(
                              targetString: '4',
                              style: AppTheme.data.textTheme.bodyLarge!.copyWith(
                                color: AppTheme.colors.primary,
                              ),
                            ),
                          ],
                        ),
                        Gap(0.026.sh),
                        PintPutX(
                          onComplete: (value) {},
                        ),
                        Gap(0.02.sh),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Visibility(
                              visible: !showCountDown,
                              child: TextButtonX(
                                onPressed: () {
                                  showCountDown = !showCountDown;
                                },
                                withUnderLine: false,
                                text: 'verify.resend_sms'.tr(),
                              ),
                            ),
                            Visibility(
                              visible: showCountDown,
                              child: Countdown(
                                seconds: 60,
                                build: (_, time) {
                                  return EasyRichText(
                                    tr(
                                      'verify.timer',
                                      namedArgs: {'time': secondToTime(time.toInt())},
                                    ),
                                    textAlign: TextAlign.center,
                                    defaultStyle: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.black),
                                    patternList: [
                                      EasyRichTextPattern(
                                        targetString: secondToTime(time.toInt()),
                                        hasSpecialCharacters: true,
                                        style: AppTheme.data.textTheme.bodyLarge!.copyWith(
                                          color: AppTheme.colors.primary,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                onFinished: () {
                                  showCountDown = !showCountDown;
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
