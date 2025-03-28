import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class HidenInput extends StatelessWidget {
  final String name;
  const HidenInput({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      builder: (fieldState) => const SizedBox(),
      name: name,
    );
  }
}
