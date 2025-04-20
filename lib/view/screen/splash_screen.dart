import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/core/image_path.dart';
import 'package:job_app/view/screen/auth/register_acconut_screen.dart';
import 'package:job_app/view/screen/auth/login_screen.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.asset(AppImages.appImage),
            SizedBox(height: 50),
            MyCustomText(
              text: AppText.title,
              textColor: AppColor.appColor,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 25),
            MyCustomText(text: AppText.subTitle, fontSize: 15),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCustomButton(
                  width: 150,
                  text: 'Login',
                  tColor: isLogin ? Colors.white : Colors.black,
                  buttonColor: isLogin ? AppColor.appColor : Colors.transparent,
                  onTap: () {
                    setState(() {
                      isLogin = true;
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
                MyCustomButton(
                  width: 150,
                  text: 'Register',
                  tColor: !isLogin ? Colors.white : Colors.black,
                  buttonColor:
                  !isLogin ? AppColor.appColor : Colors.transparent,

                  onTap: () {
                    setState(() {
                      isLogin = false;
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterAcconut()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}