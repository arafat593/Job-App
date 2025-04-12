import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:job_app/core/app_hyper_link.dart';
import 'package:url_launcher/link.dart';

class MyCustomHyperLink extends StatelessWidget {
  final String url ;
  final IconData icon;
  const MyCustomHyperLink({super.key, required this.url, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Link(
        uri: Uri.parse(url),
        builder: (context, followLink) {
          return GestureDetector(
            onTap: followLink,
            child: Container(
              height: 36,
              width: 48,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: CupertinoColors.systemGrey6,
              ),
              child: Icon(icon),
            ),
          );
        },
      ),
    );
  }
}
