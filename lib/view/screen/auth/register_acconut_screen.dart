import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/screen/auth/home_screen.dart';
import 'package:job_app/view/screen/auth/login_screen.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_input_textfield.dart';
import 'package:job_app/view/widget/my_custom_text.dart';
import 'package:job_app/view/widget/my_custom_text_button.dart';

import '../../widget/my_custom_icon.dart';

class RegisterAcconut extends StatefulWidget {
  const RegisterAcconut({super.key});

  @override
  State<RegisterAcconut> createState() => _RegisterAcconutState();
}

class _RegisterAcconutState extends State<RegisterAcconut> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                Center(
                  child: MyCustomText(
                    text: AppText.registerAccountTitle,
                    fontSize: 30,
                    textColor: AppColor.appColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                MyCustomText(
                  text: AppText.registerAccountSubTitle,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),

                SizedBox(height: 50),
                MyCustomInputTextfield(
                  label: AppText.labelTextGmail,
                  keybord: TextInputType.emailAddress,
                  controller: _emailController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your Email';
                    }
                    return null;
                  },
                ), //Email

                SizedBox(height: 20),
                MyCustomInputTextfield(
                  label: AppText.labelTextPassword,
                  keybord: TextInputType.number,
                  controller: _passwordController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your password';
                    }
                    if (value.length <= 7) {
                      return 'Password at list 8 disit';
                    }
                    return null;
                  },
                ), //Password

                SizedBox(height: 20),
                MyCustomInputTextfield(
                  label: "Confirm Password",
                  keybord: TextInputType.visiblePassword,
                  controller: _confirmPasswordController,
                  validator: (String? value) {
                    if (value == 0 || value!.isEmpty) {
                      return 'Enter your password';
                    }
                    if (value.length <= 7) {
                      return 'Password at list 8 disit';
                    }
                    if (value != _confirmPasswordController.text) {
                      return "Password don't match";
                    }
                  },
                ), //Confirm password

                SizedBox(height: 50),
                MyCustomButton(
                  text: "Sign Up",
                  width: double.maxFinite,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print("Login Successful");

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  },
                ),
                SizedBox(height: 20),
                MyCustomTextButton(
                  text: "Already have an account?",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
                SizedBox(height: 40),
                Text(
                  "Or continue with",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColor.appColor,
                  ),
                ),
                SizedBox(height: 10),
                MyCustomIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
