import 'package:casl_fit/application/auth/init/auth_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/domain/common/second_to_time.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/components/inputs/pin_put_x.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyPage extends StatefulWidget {
  final String password;

  const VerifyPage({super.key, required this.password});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  bool showCountDown = true;
  var maskFormatter = MaskTextInputFormatter(
    mask: '+### (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '+998',
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return DeFocus(
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {

            //login statusini eshitish
            if (state.registerPageType == 'register_type') {
              if (state.registerStatus.isSuccess) context.go('/root/qr_code');
              if (state.registerStatus.isError) {
                Toast.showErrorToast(message: state.errorMessage);
              }
              context.read<AuthBloc>().add(const ChangeLoginStatusEvent());
            }
            //reset password statusini eshitish
            if (state.registerPageType == 'password_recovery_type') {
              if (state.resetPasswordStatus.isSuccess) {
                context.go(Routes.signIn.path);
              }
              if (state.resetPasswordStatus.isError) {
                Toast.showErrorToast(message: state.errorMessage);
              }
              context.read<AuthBloc>().add(const ChangeResetPasswordStatusEvent());
            }
          },
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
                      color: const Color(0xFF313230).withValues(alpha: 0.9),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 12.w).copyWith(top: 100.h),
                    padding: EdgeInsets.all(14.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'verify.verify_code'.tr(),
                          style: AppTheme.data.textTheme.headlineMedium!.copyWith(color: Colors.white),
                        ),
                        Gap(0.012.sh),
                        EasyRichText(
                          tr(
                            'verify.sms_send',
                            namedArgs: {'phone': maskFormatter.maskText(state.phoneNumber ?? '')},
                          ),
                          textAlign: TextAlign.center,
                          defaultStyle: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.white),
                          patternList: [
                            EasyRichTextPattern(
                              targetString: maskFormatter.maskText(state.phoneNumber ?? ''),
                              hasSpecialCharacters: true,
                              urlType: 'tel',
                              style: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.primary),
                            ),
                            EasyRichTextPattern(
                              targetString: '4',
                              style: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.primary),
                            ),
                          ],
                        ),
                        Gap(0.026.sh),
                        PintPutX(
                          onComplete: (value) {
                            if (state.registerPageType == 'register_type') {
                              context.read<AuthBloc>().add(RegisterEvent(otpCode: value));
                            }
                            if (state.registerPageType == 'password_recovery_type') {
                              context.read<AuthBloc>().add(PasswordRecoveryEvent(otpCode: value, phone: state.phoneNumber.toString(), password: state.password.toString()));
                            }
                          },
                        ),
                        Gap(0.03.sh),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Visibility(
                              visible: !showCountDown,
                              child: TextButtonX(
                                onPressed: () {
                                  showCountDown = !showCountDown;
                                  setState(() {});
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
                                    tr('verify.timer', namedArgs: {'time': secondToTime(time.toInt())}),
                                    textAlign: TextAlign.center,
                                    defaultStyle: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.white),
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
                        ),
                        if (state.resetPasswordStatus.isLoading || state.registerStatus.isLoading) Center(child: CircularProgressIndicator(color: AppTheme.colors.primary))
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
