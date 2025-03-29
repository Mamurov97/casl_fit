
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final MaskTextInputFormatter? format;
  const CustomTextField({
    required this.hintText,
    this.isPassword = false,
    this.format,
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;

  @override
  void initState() {
    super.initState();
    showPassword = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFFDBDBDB),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        obscureText: showPassword,
        autofillHints: showPassword == true ? const [AutofillHints.password] : [],
        autofocus: widget.format != null ? true : false,
        inputFormatters: widget.format != null ? [widget.format!] : [],
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.black),
          prefix: widget.format != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("+998 ", style: TextStyle(color: Colors.black)),
                  ],
                )
              : null,


        ),
      ),
    );
  }
}