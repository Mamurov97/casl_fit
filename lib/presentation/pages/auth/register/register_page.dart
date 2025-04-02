import 'package:casl_fit/application/auth/init/auth_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormBuilderState>();

  bool passwordVisibleOne = false;
  bool passwordVisibleTwo = false;

  // Alphanumeric regex: faqat lotin harflari va raqamlar
  final alphanumericRegex = RegExp(r'^[a-zA-Z0-9]+$');

  @override
  Widget build(BuildContext context) {
    return DeFocus(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.otpStatus.isSuccess) {
            context.push(Routes.verify.path,extra: formKey.currentState?.fields['retry_password']?.value );
            context.read<AuthBloc>().add(const ChangeOtpStatusEvent());
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(
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
                    child: FormBuilder(
                      key: formKey,
                      enabled: !state.otpStatus.isLoading,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tr('register.password'), style: Theme.of(context).textTheme.labelMedium!.copyWith(color: CupertinoColors.white)),
                          FormBuilderTextField(
                            initialValue: '',
                            name: 'password',
                            obscureText: !passwordVisibleOne,
                            decoration: InputDecoration(
                              hintText: tr('register.password'),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisibleOne ? Icons.visibility_off : Icons.visibility),
                                onPressed: () {
                                  passwordVisibleOne = !passwordVisibleOne;
                                  setState(() {});
                                },
                              ),
                            ),
                            textInputAction: TextInputAction.done,
                            validator: validatePassword,
                          ),
                          Gap(10.h),
                          Text(tr('register.retry_password'), style: Theme.of(context).textTheme.labelMedium!.copyWith(color: CupertinoColors.white)),
                          FormBuilderTextField(
                            initialValue: '',
                            name: 'retry_password',
                            obscureText: !passwordVisibleTwo,
                            decoration: InputDecoration(
                              hintText: tr('register.retry_password'),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisibleTwo ? Icons.visibility_off : Icons.visibility),
                                onPressed: () {
                                  passwordVisibleTwo = !passwordVisibleTwo;
                                  setState(() {});
                                },
                              ),
                            ),
                            textInputAction: TextInputAction.done,
                            validator: validateRetryPassword,
                          ),
                          Gap(20.h),
                          ElevatedButton(
                            onPressed: state.otpStatus.isLoading
                                ? null
                                : () {
                                    if (formKey.currentState!.saveAndValidate()) {
                                      context.read<AuthBloc>().add(SendOtpEvent(password: formKey.currentState?.fields['retry_password']?.value));
                                    }
                                  },
                            child: state.otpStatus.isLoading
                                ? LoadingAnimationWidget.fallingDot(
                                    color: AppTheme.colors.primary,
                                    size: ScreenSize.h36,
                                  )
                                : Text(tr('continue')),
                          ),
                        ],
                      ),
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

  // Maxsus belgilarga ruxsat beriladi, lekin kamida bitta harf va raqam bo'lishi shart.
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return tr('errors.field_empty');
    }
    if (value.length < 6) {
      return tr('errors.min_length');
    }
    if (!RegExp(r'[a-zA-Z]').hasMatch(value)) {
      return tr('errors.no_letter'); // Kamida harf kiritilishi kerak
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return tr('errors.no_digit'); // Kamida raqam kiritilishi kerak
    }
    return null;
  }

  String? validateRetryPassword(String? value) {
    final passwordValue = formKey.currentState?.fields['password']?.value;
    final baseValidation = validatePassword(value);
    if (baseValidation != null) return baseValidation;
    if (passwordValue != null && value != passwordValue) {
      return tr('errors.passwords_not_equal');
    }
    return null;
  }
}
