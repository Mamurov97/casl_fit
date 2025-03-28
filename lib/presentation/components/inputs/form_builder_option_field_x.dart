import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderOptionFieldX extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  final String? label;
  final bool enabled;
  final String? Function(String? validation)? validator;

  const FormBuilderOptionFieldX({
    super.key,
    required this.name,
    required this.onTap,
    this.label,
    this.enabled = true,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      readOnly: true,
      enabled: enabled,
      onTap: onTap,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.arrow_drop_down),
        labelText: label,
      ),
    );
  }
}
