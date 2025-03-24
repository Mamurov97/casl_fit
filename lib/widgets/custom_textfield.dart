
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  const CustomTextField({
    required this.hintText,
    this.isPassword = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Color(0xFFDBDBDB),
          borderRadius: BorderRadius.circular(8),
        ),
        child:  TextField(
          obscureText: isPassword,
          decoration: InputDecoration(hintText: hintText, border: InputBorder.none, hintStyle: TextStyle(color: Colors.black)),
        ),
      );

  }
}