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
          child: Padding(
            padding: EdgeInsets.all(8.r),
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
        ),
      ),
    );
  }
}
