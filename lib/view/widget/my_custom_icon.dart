import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_app/core/app_hyper_link.dart';
import 'package:job_app/view/widget/my_custom_hyper_link.dart';

class MyCustomIcon extends StatelessWidget {
  const MyCustomIcon({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
children: [
  MyCustomHyperLink(url: AppHyperLink.gmailLink, icon: Icons.email),
  MyCustomHyperLink(url: AppHyperLink.facebookLink, icon: Icons.facebook),
  MyCustomHyperLink(url: AppHyperLink.appleLink, icon: Icons.apple),
],
    );
  }
}
