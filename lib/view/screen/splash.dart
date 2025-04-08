
import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/image_path.dart';
import 'package:job_app/view/widget/my_custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(AppImages.appImage),
            SizedBox(height: 50),
            Text(
              'Discover Your Dream Job here',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: AppColor.appColor,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Explore all the existing job roles based on your interest and study major",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(text: 'Sign in', color: AppColor.appColor ,),
                CustomButton(text: 'Sign up', color: AppColor.appColor ,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
