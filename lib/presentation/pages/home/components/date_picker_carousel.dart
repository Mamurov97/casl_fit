import 'package:casl_fit/utils/easy_date/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class DatePickerCarousel extends StatefulWidget {
  const DatePickerCarousel({super.key, required this.onPressed});

  final Function(int) onPressed;
  @override
  State<DatePickerCarousel> createState() => _NewWidgetExampleState();
}

class _NewWidgetExampleState extends State<DatePickerCarousel> {
  DateTime _selectedDate = DateTime.now();
  late final EasyDatePickerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = EasyDatePickerController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    DateTime monday = now.subtract(Duration(days: now.weekday - 1));
    DateTime sunday = monday.add(const Duration(days: 6));
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EasyDateTimeLinePicker(
          controller: _controller,
          currentDate: DateTime.now(),
          firstDate: monday,
          lastDate: sunday,
          focusedDate: _selectedDate,
          onDateChange: (selectedDate) {
            setState(() {
              _selectedDate = selectedDate;
              widget.onPressed(selectedDate.weekday);
            });
          },
        ),
      ],
    );
  }
}
