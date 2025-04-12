import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/basic_widgets.dart';
import '../../routes/entity/routes.dart';
import 'components/date_picker_carousel.dart';
import 'components/icon_notification.dart';
import 'components/multi_line_chart_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 1.sh,
            width: 1.sw,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF1E1F1C), Color(0xFF2C2F26), Color(0xFF1A1C18)],
                stops: [0.0, 0.5, 1.0],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Salom Asrorjon",
                              style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.primary, fontSize: 14.sp),
                            ),
                            Text(
                              "CaslFitga Xush kelibsiz !",
                              style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.white, fontSize: 11.sp),
                            )
                          ],
                        ),
                        IconNotificationButton(
                          onPressed: () {},
                          icon: AppIcons.notification,
                          iconColor: AppTheme.colors.white,
                          count: 2,
                        ),
                      ],
                    ),
                  ),
                  Gap(8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Container(
                      width: 1.sw,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.secondary,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.r),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              height: 24.h,
                              AppIcons.dumbbell,
                              colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
                            ),
                            Gap(8.h),
                            EasyRichText(
                              "Hozirda zalda 12 kishi ",
                              textAlign: TextAlign.center,
                              defaultStyle: AppTheme.data.textTheme.titleSmall!.copyWith(fontSize: 11.sp, color: AppTheme.colors.white),
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: "Hozirda zalda",
                                  style: AppTheme.data.textTheme.titleSmall!.copyWith(color: AppTheme.colors.white, fontSize: 11.sp),
                                ),
                                EasyRichTextPattern(
                                  targetString: "12",
                                  style: AppTheme.data.textTheme.titleMedium!.copyWith(color: AppTheme.colors.primary, fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const DatePickerCarousel(),
                  Gap(4.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: MultiLineChartCarousel(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
/*    Center(
                    child: Container(
                      decoration: BoxDecoration(color: AppTheme.colors.secondary, borderRadius: BorderRadius.circular(24.r)),
                      height: 0.18.sh,
                      padding: EdgeInsets.all(16.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zaldagi sportchilar soni",
                            style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.white, fontSize: 16.sp),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "10",
                                  style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.primary, fontSize: 26.sp),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),*/