import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';

import '../../sealed_classes/sealed_classes.exports.dart';
import '../../theme/theme.exports.dart';
import 'day_part_widget.dart';

class DayWidget extends StatefulWidget {
  /// A widget that represents a single day in a calendar view.
  ///
  /// This widget is responsible for rendering a day cell with customizable appearance
  /// based on various states such as selected, disabled, or current day.
  const DayWidget({
    super.key,
    required this.date,
    required this.isDisabled,
    required this.isSelectedDay,
    required this.isToday,
    required this.onChanged,
    this.focusNode,
    required this.dayPartsOrder,
    required this.locale,
  });

  /// The date represented by this widget.
  final DateTime date;

  /// Whether this day is disabled and cannot be selected.
  final bool isDisabled;

  /// Whether this day is currently selected.
  final bool isSelectedDay;

  /// Whether this day represents the current date.
  final bool isToday;

  /// Callback function triggered when this day is selected.
  final ValueChanged<DateTime> onChanged;

  /// Optional focus node for managing focus on this day widget.
  final FocusNode? focusNode;

  /// The order in which different parts of the day (e.g., day number, weekday) should be displayed.
  final List<DayElement> dayPartsOrder;

  /// The locale used for formatting date strings.
  final String locale;

  @override
  State<DayWidget> createState() => _DayWidgetState();
}

class _DayWidgetState extends State<DayWidget> {
  /// Controller for managing the widget's states (e.g., disabled, selected).
  final WidgetStatesController _statesController = WidgetStatesController();

  @override
  Widget build(BuildContext context) {
    // Retrieve theme data and default styles
    final EasyThemeData defaults = EasyTheme.defaultsOf(context);
    final EasyThemeData? datePickerTheme = EasyTheme.maybeOf(context);
    // Helper functions for resolving theme properties
    T? effectiveValue<T>(T? Function(EasyThemeData? theme) getProperty) {
      return getProperty(datePickerTheme) ?? getProperty(defaults);
    }
    // Helper function for resolving widget state properties
    T? resolve<T>(WidgetStateProperty<T>? Function(EasyThemeData? theme) getProperty, Set<WidgetState> states) {
      return effectiveValue(
        (EasyThemeData? theme) {
          return getProperty(theme)?.resolve(states);
        },
      );
    }

    // Determine the current states of the widget
    final Set<WidgetState> states = <WidgetState>{
      if (widget.isDisabled) WidgetState.disabled,
      if (widget.isSelectedDay) WidgetState.selected,
    };



    // Determine the shape of the day widget
    final OutlinedBorder dayShape = widget.isToday ? resolve<OutlinedBorder?>((theme) => theme?.currentDayShape, states)! : resolve<OutlinedBorder?>((theme) => theme?.dayShape, states)!;


    final effectiveMainAxisAlignment = widget.dayPartsOrder.length < 3 ? MainAxisAlignment.center : MainAxisAlignment.spaceEvenly;

    _statesController.value = states;
    Widget dayWidget = DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: widget.isSelectedDay ? AppTheme.colors.primary : AppTheme.colors.secondary,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: effectiveMainAxisAlignment,
        children: [
          DayPartWidget(
            date: widget.date,
            format: widget.dayPartsOrder[0].format,
            locale: widget.locale,
            isSelectedDay: widget.isSelectedDay,
          ),
        ],
      ),
    );
    if (widget.isDisabled) {
      dayWidget = ExcludeSemantics(
        child: dayWidget,
      );
    } else {
      dayWidget = InkWell(
        focusNode: widget.focusNode,
        onTap: () => widget.onChanged(widget.date),
        statesController: _statesController,
        // overlayColor: MaterialStateProperty.all(dayOverlayColor),
        customBorder: dayShape,
        child: Semantics(
          label: '${widget.date.day}, ${widget.date.month}/${widget.date.year}',
          button: true,
          selected: widget.isSelectedDay,
          excludeSemantics: true,
          child: dayWidget,
        ),
      );
    }

    return dayWidget;
  }

  @override
  void dispose() {
    _statesController.dispose();
    super.dispose();
  }
}
