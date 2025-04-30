import 'package:casl_fit/application/auth/init/auth_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return DeFocus(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.otpStatus.isSuccess) {
            context.push(Routes.verify.path, extra: 'register');
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
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "register.register".tr(),
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                              ),
                            ),
                            const Gap(20),
                            buildRequiredTextField("name", "register.name"),
                            buildRequiredTextField("surname", "register.surname"),
                            buildRequiredTextField("patronymic", "register.patronymic"),
                            buildRequiredDateField("date_birthday", "register.date_birthday"),
                            const Gap(20),
                            ElevatedButton(
                              onPressed: state.otpStatus.isLoading
                                  ? null
                                  : () {
                                      if (formKey.currentState!.saveAndValidate()) {
                                        final data = formKey.currentState!.value;
                                        final name = "${data['name']} ${data['surname']} ${data['patronymic']}";
                                        context.read<AuthBloc>().add(SetRegisterData(name: name, birthday: data['date_birthday'].toString()));
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
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildLabel(String text) => Text(text, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: CupertinoColors.white));

  Widget buildRequiredTextField(String name, String label) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLabel(label.tr()),
          const Gap(3),
          FormBuilderTextField(
            name: name,
            validator: FormBuilderValidators.required(errorText: 'errors.field_empty'.tr()),
            decoration: buildInputDecoration(label.tr()),
          ),
          const Gap(10),
        ],
      );

  Widget buildRequiredDateField(String name, String label) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLabel(label.tr()),
          const Gap(3),
          FormBuilderDateTimePicker(
            name: name,
            inputType: InputType.date,
            format: DateFormat('dd.MM.yyyy'),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            validator: FormBuilderValidators.required(errorText: 'errors.field_empty'.tr()),
            decoration: buildInputDecoration(label.tr()),
          ),
          const Gap(10),
        ],
      );

  InputDecoration buildInputDecoration(String hint, {Widget? suffixIcon}) {
    return InputDecoration(
      hintText: hint.tr(),
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
