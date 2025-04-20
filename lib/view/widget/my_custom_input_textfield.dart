import 'package:flutter/material.dart';
import '../../core/app_color.dart';

class MyCustomInputTextfield extends StatefulWidget {
  final String label;
  final TextInputType keybord;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  MyCustomInputTextfield({
    super.key,
    required this.label,
    this.controller,
    this.validator,
    required this.keybord,
  });

  @override
  State<MyCustomInputTextfield> createState() => _MyCustomInputTextfieldState();
}

class _MyCustomInputTextfieldState extends State<MyCustomInputTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.label,
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
      keyboardType: widget.keybord,
    );
  }
}
