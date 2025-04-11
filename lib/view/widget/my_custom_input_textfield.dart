import 'package:flutter/material.dart';
import '../../core/app_color.dart';

class MyCustomInputTextfield extends StatelessWidget {
  final String label;
  final TextInputType keybord;
  const MyCustomInputTextfield({super.key, required this.label, required this.keybord});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: AppColor.appLightColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.appColor, width: 2),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      keyboardType: keybord,
    );;
  }
}

