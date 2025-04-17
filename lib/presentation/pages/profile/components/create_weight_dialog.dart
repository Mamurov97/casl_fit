import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../application/profile/weight_height/weight_height_bloc.dart';
import '../../../assets/theme/app_theme.dart';
import '../../../components/buttons/main_button.dart';
import '../../../components/toast/toast.dart';

class CreateWeightDialog extends StatefulWidget {
  const CreateWeightDialog({
    super.key,
  });


  @override
  State<CreateWeightDialog> createState() => _CreateWeightDialogState();
}

class _CreateWeightDialogState extends State<CreateWeightDialog> {
  var controller = TextEditingController();
  var controllerHeight = TextEditingController();
  bool value = true;

  @override
  void initState() {
    value = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeightHeightBloc, WeightHeightState>(
      listener: (context, state) {
        if (state.saveStatus == BlocStatus.success) {
          if (value) {
            Navigator.pop(context, true);
            value = false;
          }
        }
        if (state.saveStatus == BlocStatus.error) {
          Navigator.pop(context, false);
        }
      },
      builder: (context, state) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w, bottom: 10.h),
          backgroundColor: AppTheme.colors.secondary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Text(
                    state.weightHeightEnum == WeightHeightEnum.height ? "Bo'y qo'shish" : 'Vazn qo`shish',
                    textAlign: TextAlign.center,
                    style: AppTheme.data.textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(24.r),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        width: 24.w,
                        height: 24.h,
                        decoration: BoxDecoration(color: AppTheme.colors.red, borderRadius: BorderRadius.circular(24.r)),
                        child: Icon(
                          Icons.close,
                          color: AppTheme.colors.white,
                        )),
                  )
                ],
              ),
              Gap(18.h),
              TextFormField(
                controller: controller,
                autofocus: true,
                maxLength: 5,
                textAlign: TextAlign.center,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*$')),
                ],
                onChanged: (v) {
                  if (v.contains('..')) {
                    controller.text = v.replaceAll('..', '.');
                    controller.selection = TextSelection.fromPosition(
                      TextPosition(offset: controller.text.length),
                    );
                  }
                  setState(() {});
                  setState(() {});
                },
                decoration: InputDecoration(
                    labelStyle: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.white),
                    hintText: state.weightHeightEnum == WeightHeightEnum.height ? "Bo'yingizni kiriting" : "Vazningizni kiriting",
                    suffixText: state.weightHeightEnum == WeightHeightEnum.height ? "sm" : 'kg',
                    counter: const SizedBox()),
              ),
              Gap(18.h),
              Row(
                children: [
                  Expanded(
                    child: MainButton(
                      text: 'Yuborish',
                      backgroundColor: controller.text.isNotEmpty ? AppTheme.colors.primary : Colors.grey,
                      onPressed: () {
                        if ((controller.text.isNotEmpty)) {
                          final number = double.parse(controller.text.isNotEmpty ? controller.text : '0');
                          if (number >= 30.0 && number <= 250.0 || state.weightHeightEnum == WeightHeightEnum.height) {
                            context.read<WeightHeightBloc>().add(SetWeightHeightEvent(weightHeight: controller.text.toString(), weightHeightEnum: state.weightHeightEnum));
                          } else {
                            if (mounted) {
                              Toast.showInfoToast(message: 'Kiritilayotgan vazn 30kg va 250kg oralig`ida bolishi kerak');
                            }
                          }
                        } else {
                          Toast.showInfoToast(message: "Maydonni to'ldiring");
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
