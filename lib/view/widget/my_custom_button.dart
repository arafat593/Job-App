
import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';

class MyCustomButton extends StatefulWidget {
  final String text;
  final double width;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? tColor;

   const MyCustomButton({
    super.key,
    required this.text,
    this.onTap,
    required this.width,
    this.buttonColor,
    this.tColor,
  });

  @override
  State<MyCustomButton> createState() => _MyCustomButtonState();
}
bool isSelected = false;

class _MyCustomButtonState extends State<MyCustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 57,
        width: widget.width,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.appColor, width: 1),
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: widget.tColor,
          ),
        ),
      ),
    );
  }
}
