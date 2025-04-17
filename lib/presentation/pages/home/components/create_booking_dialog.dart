import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../assets/theme/app_theme.dart';
import '../../../components/buttons/main_button.dart';
import '../../../components/toast/toast.dart';

class CreateBookingDialog extends StatefulWidget {
  const CreateBookingDialog({
    super.key,
  });

  @override
  State<CreateBookingDialog> createState() => _CreateBookingDialogState();
}

class _CreateBookingDialogState extends State<CreateBookingDialog> {
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
                "Bron qilish vaqtini tanlang",
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
            decoration: InputDecoration(labelStyle: AppTheme.data.textTheme.bodyLarge!.copyWith(color: AppTheme.colors.white), counter: const SizedBox()),
          ),
          Gap(18.h),
          Row(
            children: [
              Expanded(
                child: MainButton(
                  text: 'Saqlash',
                  backgroundColor: controller.text.isNotEmpty ? AppTheme.colors.primary : Colors.grey,
                  onPressed: () {
                    if ((controller.text.isNotEmpty)) {

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
  }
}
