import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/screen/auth/forgot_password_screen.dart';
import 'package:job_app/view/screen/auth/home_screen.dart';
import 'package:job_app/view/screen/auth/register_acconut_screen.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_hyper_link.dart';
import 'package:job_app/view/widget/my_custom_icon.dart';
import 'package:job_app/view/widget/my_custom_input_textfield.dart';
import 'package:job_app/view/widget/my_custom_text.dart';
import 'package:job_app/view/widget/my_custom_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Center(
                child: MyCustomText(
                  text: AppText.loginTitle,
                  textColor: AppColor.appColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: MyCustomText(
                  text: AppText.loginSubTitle,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 70),
              MyCustomInputTextfield(
                label: AppText.labelTextGmail,
                keybord: TextInputType.emailAddress,
              ),
              //Gmail
              SizedBox(height: 20),
              MyCustomInputTextfield(
                label: AppText.labelTextPassword,
                keybord: TextInputType.number,
              ),
              //password
              SizedBox(height: 20),
              MyCustomTextButton(
                text: "Forgot your password?",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
              ),
              SizedBox(height: 20),
              MyCustomButton(
                width: double.maxFinite,
                text: 'Sign in',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              SizedBox(height: 25),
              MyCustomTextButton(
                text: "Create New Account",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterAcconut()),
                  );
                },
              ),
              SizedBox(height: 30),
              Text(
                'Or continue with',
                style: TextStyle(
                  color: AppColor.appColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              MyCustomIcon(),
            ],
          ),
        ),
      ),
    );
  }
}
