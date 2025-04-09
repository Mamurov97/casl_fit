import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/cupertino.dart';

class TrainingItem extends StatefulWidget {
  const TrainingItem({super.key});

  @override
  State<TrainingItem> createState() => _TrainingItemState();
}

class _TrainingItemState extends State<TrainingItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppTheme.colors.blueGray50,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            children: [
              Gap(5.h),
              Expanded(
                flex: 4,
                child: SvgPicture.asset(AppIcons.body2),
              ),
              Gap(5.h),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.colors.gray.withOpacity(0.55),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.r),bottomRight: Radius.circular(8.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            maxLines: 1,
                            "Seated Dumbbell Overhead Press",
                            overflow: TextOverflow.ellipsis,
                            style: AppTheme.data.textTheme.bodyMedium!.copyWith(color: AppTheme.colors.white, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.all(6.w),
            child: Icon(
              CupertinoIcons.star,
              color: AppTheme.colors.black700,
              size: 18.sp,
            ),
          ),
        )
      ],
    );
  }
}
