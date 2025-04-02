import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllPlanItem extends StatelessWidget {
  final Map<String, dynamic> item;
  final VoidCallback onPressed;

  const AllPlanItem({super.key, required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 12.h),
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item["title"],
                    style: AppTheme.data.textTheme.titleLarge?.copyWith(color: AppTheme.colors.white),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(item["discount"], style: AppTheme.data.textTheme.titleLarge?.copyWith(color: AppTheme.colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "${item["monthlyPrice"]} so'm x ${item["months"]} oy",
                style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.white, fontSize: 12.sp),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    item["totalPrice"] + " so'm",
                    style: AppTheme.data.textTheme.titleLarge?.copyWith(color: AppTheme.colors.white, fontSize: 14.sp),
                  ),
                  const SizedBox(width: 8),
                  Text(item["oldPrice"] + " so'm", style: AppTheme.data.textTheme.titleSmall?.copyWith(decoration: TextDecoration.lineThrough, color: Colors.white70, fontSize: 14.sp)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
