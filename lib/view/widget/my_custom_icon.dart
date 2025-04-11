import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomIcon extends StatelessWidget {
  final IconData email;
  final void Function()? link;

  const MyCustomIcon({super.key, required this.email, this.link,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: link,
      child: Container(
        height: 36,
        width: 48,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: CupertinoColors.systemGrey5,
        ),
        child: Icon(email),
      ),
    );
  }
}
