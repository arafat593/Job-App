import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_icon.dart';
import 'package:job_app/view/widget/my_custom_input_textfield.dart';
import 'package:job_app/view/widget/my_custom_text.dart';
import 'package:job_app/view/widget/my_custom_text_button.dart';

import 'login_screen.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              MyCustomText(
                text: AppText.newPassword,
                textColor: AppColor.appColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 100),
              MyCustomInputTextfield(
                label: "New Password",
                keybord: TextInputType.number,
              ),
              SizedBox(height: 30),
              MyCustomInputTextfield(
                label: "Confirm Password",
                keybord: TextInputType.number,
              ),
              SizedBox(height: 100),
              MyCustomButton(text: "Confirm", width: double.maxFinite),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomIcon(email: Icons.email),
                  MyCustomIcon(email: Icons.facebook),
                  MyCustomIcon(email: Icons.apple),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
