import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/screen/auth/new_password_screen.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_icon.dart';
import 'package:job_app/view/widget/my_custom_input_textfield.dart';
import 'package:job_app/view/widget/my_custom_text.dart';
import 'package:job_app/view/widget/my_custom_text_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              MyCustomText(
                text: AppText.verificationTitle,
                fontSize: 30,
                textColor: AppColor.appColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 50),
              MyCustomText(
                text: AppText.verificationSubTitle,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              SizedBox(height: 20),
              MyCustomInputTextfield(
                label: "Code",
                keybord: TextInputType.number,
              ),
              SizedBox(height: 20),
              MyCustomText(text: AppText.resendCode),
              MyCustomTextButton(
                text: "Resend",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationScreen(),
                    ),
                  );
                },
              ),
              MyCustomButton(
                text: "Send",
                width: double.infinity,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPasswordScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50),
              Text('Or'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomIcon(email: Icons.email),
                  MyCustomIcon(email: Icons.facebook),
                  MyCustomIcon(email: Icons.apple),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
