import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:casl_fit/application/auth/init/init_auth_bloc.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
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
    initialText: "+998",
    type: MaskAutoCompletionType.lazy,
  );

  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return DeFocus(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            context.push(Routes.createPasscode.path);
          } else if (state is SignInError) {
            EasyLoading.showError(state.error);
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppTheme.colors.background,
            body: FormBuilder(
              key: formKey,
              enabled: state is! SignInLoading,
              child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: ScreenSize.w16).copyWith(top: 100.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
                      child: Text(
                        tr('sign_in.login_to_your_account'),
                        style: AppTheme.data.textTheme.displayMedium?.copyWith(
                          color: AppTheme.colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h, left: 5.w),
                      child: Text(
                        tr('sign_in.phone_number'),
                        style: AppTheme.data.textTheme.titleMedium,
                      ),
                    ),
                    FormBuilderTextField(
                      initialValue: '+998',
                      name: "phone",
                      inputFormatters: [maskFormatter],
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: tr('sign_in.phone_number'),
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (v) {
                        if (v?.isEmpty ?? false) {
                          return tr('errors.field_empty');
                        }
                        if (!maskFormatter.isFill()) {
                          return tr('errors.mask_error');
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 2.h, left: 5.w),
                      child: Text(
                        tr('sign_in.password'),
                        style: AppTheme.data.textTheme.titleMedium,
                      ),
                    ),
                    FormBuilderTextField(
                      initialValue: '',
                      name: 'password',
                      obscureText: !passwordVisible,
                      decoration: InputDecoration(
                        hintText: tr('sign_in.password'),
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
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
                    Gap(15.h),
                    ElevatedButton(
                      onPressed: state is SignInLoading
                          ? null
                          : () async {
                              if (formKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                      SignInEvent(
                                        phone: maskFormatter.getUnmaskedText().substring(3),
                                        password: formKey.currentState?.fields["password"]?.value,
                                      ),
                                    );
                              }
                            },
                      child: state is SignInLoading
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
          );
        },
      ),
    );
  }
}
