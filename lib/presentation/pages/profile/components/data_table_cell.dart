import 'package:flutter/material.dart';

class DataTableCell extends StatelessWidget {
  const DataTableCell({super.key, required this.name, required this.style, this.color});

  final String name;
  final TextStyle style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10).copyWith(left: 0, right: 0),
        color: color??Colors.transparent,
        alignment: Alignment.center,
        child: Text(
          name,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
