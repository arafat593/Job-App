import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/screen/auth/new_password_screen.dart';
import 'package:job_app/view/screen/auth/verification_screen.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_icon.dart';
import 'package:job_app/view/widget/my_custom_input_textfield.dart';
import 'package:job_app/view/widget/my_custom_text_button.dart';
import '../../widget/my_custom_text.dart';
import 'login_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              MyCustomText(
                text: AppText.forgotPassword,
                fontSize: 30,
                textColor: AppColor.appColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 40),
              MyCustomText(
                text: AppText.forgotSubPassword,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              MyCustomInputTextfield(
                label: AppText.labelTextGmail,
                keybord: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              MyCustomTextButton(
                text: 'Back to Sign in',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              SizedBox(height: 20),
              MyCustomButton(
                text: "Send",
                width: double.maxFinite,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30),
              Text("Or"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomIcon(email: Icons.email),
                  MyCustomIcon(email: Icons.facebook),
                  MyCustomIcon(email: Icons.apple),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
