import 'dart:io';

import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../basic_widgets.dart';

class UpdateAppDialog extends StatelessWidget {
  const UpdateAppDialog({super.key, required this.status, required this.features});

  final String status;
  final List<String> features;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppTheme.colors.secondary,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.03.sh, horizontal: 0.05.sw),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Yangilash',
                textAlign: TextAlign.center,
                style: AppTheme.data.textTheme.displayLarge!.copyWith(color: AppTheme.colors.white),
              ),
            ),
            Gap(10.h),
            Text(
              "Dasturga qo'shimcha imkoniyatlar qo'shildi uni yangilab oling !!!",
              style: AppTheme.data.textTheme.labelLarge!.copyWith(color: AppTheme.colors.white),
            ),
            Gap(20.h),
            if (features.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "O'zgartirishlar:",
                    style: AppTheme.data.textTheme.labelSmall!.copyWith(color: AppTheme.colors.white),
                  ),
                  Gap(5.h),
                  ...List.generate(
                    features.length,
                    (index) => Text(
                      "    * ${features[index]}",
                      style: AppTheme.data.textTheme.labelSmall!.copyWith(color: AppTheme.colors.white),
                    ),
                  ),
                ],
              ),
            Center(
              child: Lottie.asset(
                "assets/animations/update_app.json",
                height: 0.2.sh,
                fit: BoxFit.fitHeight,
                repeat: false,
              ),
            ),
            Gap(15.h),
            Row(
              children: [
                status == "hard"
                    ? const SizedBox()
                    : Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: Colors.grey.shade200),
                              child: Center(
                                child: Text(
                                  "Keyinroq",
                                  style: AppTheme.data.textTheme.labelSmall!.copyWith(color: AppTheme.colors.black, fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                      ),
                Gap(10.w),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      if (Platform.isAndroid) {
                        _launchUrl();
                      } else if (Platform.isIOS) {
                        _launchUrlIos();
                      }

                      Navigator.pop(context);
                    },
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppTheme.colors.primary),
                        child: Center(
                          child: Text(
                            "Yangilash",
                            style: AppTheme.data.textTheme.labelSmall!.copyWith(color: AppTheme.colors.secondary, fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse('https://play.google.com/store/apps/details?id=com.garantsoft.casl_fit&pli=1');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchUrlIos() async {
    final Uri url = Uri.parse('https://apps.apple.com/uz/app/caslfit/id6744269962');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
