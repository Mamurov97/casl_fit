import 'package:casl_fit/application/auth/init/auth_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/components/dialogs/auth_dialogs.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormBuilderState>();
  var maskFormatter = MaskTextInputFormatter(
    mask: '+### (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '+998',
    type: MaskAutoCompletionType.lazy,
  );

  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return DeFocus(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          //auth statusini eshitish
          if (state.authStatus.isError) Toast.showErrorToast(message: state.errorMessage, duration: const Duration(seconds: 4));
          if (state.authStatus.isRegister) {
            AuthDialogs.showRegisterDialog(
              context,
              onRegister: () {
                context.read<AuthBloc>().add(const SetRegisterPageType(type: 'register_type'));
                context.push(Routes.register.path);
              },
            );
            context.read<AuthBloc>().add(const ChangeAuthStatusEvent());
          }
          if (state.authStatus.isNotFound) AuthDialogs.showNotFoundDialog(context);

          //login statusini eshitish
          if (state.loginStatus.isSuccess) context.go('/root/home');
          if (state.loginStatus.isError) {
            Toast.showErrorToast(message: state.errorMessage);
            context.read<AuthBloc>().add(const ChangeLoginStatusEvent());
          }
        },
        builder: (context, state) {
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
                      enabled: !(state.loginStatus.isLoading || state.authStatus.isLoading),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tr('sign_in.phone_number'), style: Theme.of(context).textTheme.labelMedium!.copyWith(color: CupertinoColors.white)),
                          FormBuilderTextField(
                            initialValue: '+998',
                            name: "phone",
                            autofocus: true,
                            inputFormatters: [maskFormatter],
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: tr('sign_in.phone_number'),
                              suffixIcon: state.authStatus.isLoading
                                  ? LoadingAnimationWidget.fallingDot(
                                      color: AppTheme.colors.primary,
                                      size: ScreenSize.h36,
                                    )
                                  : state.authStatus.isLogin
                                      ? const Icon(CupertinoIcons.checkmark_circle_fill, color: CupertinoColors.activeGreen)
                                      : state.authStatus.isError || state.authStatus.isRegister || state.authStatus.isNotFound
                                          ? IconButton(
                                              onPressed: () {
                                                if (maskFormatter.isFill()) {
                                                  context.read<AuthBloc>().add(CheckPhoneNumber(phone: maskFormatter.getUnmaskedText()));
                                                } else {
                                                  Toast.showWarningToast(message: 'errors.mask_error'.tr());
                                                }
                                              },
                                              icon: const Icon(CupertinoIcons.arrow_counterclockwise, color: CupertinoColors.activeOrange))
                                          : const SizedBox(),
                            ),
                            textInputAction: TextInputAction.done,
                            onChanged: (value) {
                              if (maskFormatter.isFill()) {
                                context.read<AuthBloc>().add(CheckPhoneNumber(phone: maskFormatter.getUnmaskedText()));
                              } else if (!state.authStatus.isInitial) {
                                context.read<AuthBloc>().add(const ChangeAuthStatusEvent());
                              }
                            },
                            validator: (v) {
                              if ((v?.isEmpty ?? false) || (v?.length ?? 0) < 5) {
                                return tr('errors.field_empty');
                              }
                              if (!maskFormatter.isFill()) {
                                return tr('errors.mask_error');
                              }
                              return null;
                            },
                          ),
                          Gap(10.h),
                          Text(tr('sign_in.password'), style: Theme.of(context).textTheme.labelMedium!.copyWith(color: CupertinoColors.white)),
                          FormBuilderTextField(
                            initialValue: '',
                            name: 'password',
                            obscureText: !passwordVisible,
                            decoration: InputDecoration(
                              hintText: tr('sign_in.password'),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisible ? Icons.visibility_off : Icons.visibility),
                                onPressed: () {
                                  passwordVisible = !passwordVisible;
                                  setState(() {});
                                },
                              ),
                            ),
                            textInputAction: TextInputAction.done,
                            validator: (v) {
                              if (v?.isEmpty ?? false) {
                                return tr('errors.field_empty');
                              }
                              return null;
                            },
                          ),
                          Container(
                            height: 35.h,
                            alignment: Alignment.bottomLeft,
                            child: Visibility(
                              visible: state.authStatus.isLogin,
                              child: TextButtonX(
                                onPressed: () {
                                  context.read<AuthBloc>().add(const SetRegisterPageType(type: 'password_recovery_type'));

                                  context.push(Routes.register.path);
                                },
                                text: 'sign_in.password_recovery'.tr(),
                              ),
                            ),
                          ),
                          Gap(20.h),
                          ElevatedButton(
                            onPressed: state.loginStatus.isLoading
                                ? null
                                : () {
                                    if (formKey.currentState!.validate()) {
                                      context.read<AuthBloc>().add(
                                            LoginEvent(
                                              phone: maskFormatter.getUnmaskedText(),
                                              password: formKey.currentState?.fields["password"]?.value,
                                            ),
                                          );
                                    }
                                  },
                            child: state.loginStatus.isLoading
                                ? LoadingAnimationWidget.fallingDot(
                                    color: AppTheme.colors.primary,
                                    size: ScreenSize.h36,
                                  )
                                : Text(tr('sign_in.login')),
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
}
