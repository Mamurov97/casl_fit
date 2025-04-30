import 'package:casl_fit/application/auth/init/auth_bloc.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
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
  const VerifyPage({super.key, required this.type});

  final String type;

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

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DeFocus(
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listenWhen: (prev, cur) => (prev.otpVerifyStatus != cur.otpVerifyStatus) || (prev.registerStatus != cur.registerStatus),
          listener: (context, state) {
            //login statusini eshitish
            final route = UserData.passCodeStatus ? Routes.checkPassCode.path : Routes.setPassCode.path;
            if (state.otpVerifyStatus.isSuccess && widget.type == "login") context.go(route);
            if (state.registerStatus.isSuccess && widget.type == "register") context.go(route);
            if (state.otpVerifyStatus.isError || state.registerStatus.isError) {
              Toast.showErrorToast(message: state.errorMessage);
              controller.clear();
            }
            context.read<AuthBloc>().add(const ChangeOtpVerifyStatusEvent());
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
                          controller: controller,
                          onComplete: (value) {
                            if(widget.type == "login"){
                              context.read<AuthBloc>().add(VerifyOtpEvent(otpCode: value));
                            }else{
                              context.read<AuthBloc>().add(RegisterEvent(otpCode: value));
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
                        if (state.otpVerifyStatus.isLoading) Center(child: CircularProgressIndicator(color: AppTheme.colors.primary))
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
