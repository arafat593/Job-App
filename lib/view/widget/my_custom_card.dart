import 'package:flutter/material.dart';
import '../../core/app_color.dart';

class MyCustomCard extends StatelessWidget {
  final Icon editProfileIcon;
  final String editProfileText;
  const MyCustomCard({super.key, required this.editProfileIcon, required this.editProfileText});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        color: AppColor.appLightColor,
        child: Container(height: 70, width: double.maxFinite,
        child:
        Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: editProfileIcon,
          ),
          Text(editProfileText,style: TextStyle(fontSize: 20),),
        ],)
        ),
      ),
    );
  }
}
