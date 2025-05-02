import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';

class UzbekWeekdaySelector extends StatefulWidget {
  final Function(int selectedIndex) onChanged;

  const UzbekWeekdaySelector({
    super.key,
    required this.onChanged,
  });

  @override
  State<UzbekWeekdaySelector> createState() => _UzbekWeekdaySelectorState();
}

class _UzbekWeekdaySelectorState extends State<UzbekWeekdaySelector> {
  final List<String> weekDays = ['Du', 'Se', 'Cho', 'Pa', 'Ju', 'Sha', 'Ya'];
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    // Haftaning bugungi kuni (1 = Dushanba, ..., 7 = Yakshanba)
    int weekday = DateTime.now().weekday;
    // Flutterda 1 (Dushanba) => index 0 bo'lishi kerak
    selectedIndex = (weekday - 1); // Yakshanba 7 => index 6 bo'ladi
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: weekDays.length,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
        separatorBuilder: (_, __) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.onChanged(index);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              width: 0.12.sw,

              decoration: BoxDecoration(
                color: isSelected ? AppTheme.colors.primary : AppTheme.colors.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    weekDays[index],
                    style: TextStyle(
                      color: !isSelected ? Colors.white : Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SvgPicture.asset(
                    AppIcons.weekday,
                    colorFilter: ColorFilter.mode(!isSelected ? Colors.white : Colors.black87, BlendMode.srcIn),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
