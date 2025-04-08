
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 57,
        width: 150,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(text,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
    );
  }
}
