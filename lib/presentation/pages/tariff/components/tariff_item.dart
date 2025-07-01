import 'package:casl_fit/infrastructure/dto/models/tariff/tariff_model.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';

class TariffItem extends StatelessWidget {
  final Data? item;
  final VoidCallback onPressed;
  final bool isArrow;

  const TariffItem({super.key, required this.item, required this.onPressed, required this.isArrow});

  @override
  Widget build(BuildContext context) {
    final DateTime? startDate = item?.startDate != null ? DateTime.tryParse(item!.startDate!) : null;
    final DateTime? endDate = item?.endDate != null ? DateTime.tryParse(item!.endDate!) : null;

    final int daysLeft = endDate != null ? endDate.difference(DateTime.now()).inDays : 0;

    final bool showWarning = daysLeft > 0 && daysLeft < 4;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      margin: EdgeInsets.only(bottom: 12.h),
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.colors.secondary,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.w),
                child: Row(
                  mainAxisAlignment: isArrow ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (item?.nameMobile ?? ""),
                            style: AppTheme.data.textTheme.titleLarge?.copyWith(color: AppTheme.colors.white),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                height: 20.h,
                                AppIcons.calendar,
                                colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
                              ),
                              Gap(8.w),
                              Text(
                                item?.monthlyLimit == 0 ? "1 kun" : "${item?.monthlyLimit} oy",
                                style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.white, fontSize: 12.sp),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                height: 20.h,
                                AppIcons.time,
                                colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
                              ),
                              Gap(8.w),
                              Text(
                                "${DateFormat.Hm().format(DateTime.parse(item?.limitTimeFrom ?? '0001-01-01T00:00:00'))} - "
                                "${DateFormat.Hm().format(DateTime.parse(item?.limitTimeTo ?? '0001-01-01T00:00:00'))}",
                                style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.white, fontSize: 12.sp),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                height: 20.h,
                                AppIcons.money,
                                colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
                              ),
                              Gap(8.w),
                              Text(
                                "${NumberFormat("#,###", "uz_UZ").format(item?.price ?? 0).replaceAll(",", " ")} so'm",
                                style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.white, fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (isArrow) Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 24.r)
                  ],
                ),
              ),
              if (startDate != null && endDate != null) const Divider(),
              if (startDate != null && endDate != null)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w).copyWith(bottom: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.date_range, color: AppTheme.colors.primary, size: 18.r),
                          Gap(8.w),
                          Text(
                            "${DateFormat.yMMMMd('uz_UZ').format(startDate)} — ${DateFormat.yMMMMd('uz_UZ').format(endDate)}",
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(
                              color: AppTheme.colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Gap(8.w),
                          if (showWarning) ...[
                            Expanded(
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                                  decoration: BoxDecoration(
                                    color: Colors.red.withAlpha(38),
                                    borderRadius: BorderRadius.circular(8.r),
                                    border: Border.all(color: Colors.red),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.warning_amber_rounded, color: Colors.red, size: 18.r),
                                      Gap(8.w),
                                      Text(
                                        "$daysLeft kun qoldi",
                                        style: AppTheme.data.textTheme.bodySmall?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
