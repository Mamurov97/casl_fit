import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';

class DayPartWidget extends StatefulWidget {
  /// Builds a widget that displays a part of a date in a flexible area.
  ///
  /// The [date] is formatted according to the [format] and [locale] provided.
  /// The formatted text is then displayed in a [Text] widget with the given
  /// [style].
  ///
  /// The [Text] widget is contained within a [FittedBox] to ensure that it
  /// fits within the available space.
  ///
  /// The [Flexible] widget is used to ensure that the [FittedBox] has a
  /// bounded width.
  const DayPartWidget({
    super.key,
    required this.date,
    required this.format,
    required this.locale,
    this.style,
    required this.isSelectedDay,
  });

  final DateTime date;
  final bool isSelectedDay;

  /// `format`: The format string used to format the date.
  final String format;

  /// `locale`: The locale to be used for formatting the date.
  final String locale;

  /// `style`: An optional `TextStyle` to style the displayed date.
  final TextStyle? style;

  @override
  State<DayPartWidget> createState() => _DayPartWidgetState();
}

class _DayPartWidgetState extends State<DayPartWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          DateFormat('EEE',"uz").format(widget.date),
          style: AppTheme.data.textTheme.titleSmall?.copyWith(fontSize: 12.sp, color: widget.isSelectedDay ? AppTheme.colors.black : AppTheme.colors.white),
        ),
        Gap(4.h),
     /*   Container(
          height: 35.h,
          width: 35.w,
          decoration: BoxDecoration(color: widget.isSelectedDay ? AppTheme.colors.white : AppTheme.colors.black.withValues(alpha: 0.7), borderRadius: BorderRadius.circular(62.r)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                DateFormat('d', widget.locale).format(widget.date),
                style: AppTheme.data.textTheme.titleSmall?.copyWith(fontSize: 12.sp, color: widget.isSelectedDay ? AppTheme.colors.black : AppTheme.colors.white),
              ),
            ),
          ),
        )*/
      ],
    );
  }
}
