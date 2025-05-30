import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/screen/auth/verification_screen.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_icon.dart';
import 'package:job_app/view/widget/my_custom_input_textfield.dart';
import 'package:job_app/view/widget/my_custom_text_button.dart';
import '../../widget/my_custom_text.dart';
import 'login_screen.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                  controller: _emailController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Your Mail';
                    }
                    return null;
                  },
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
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerificationScreen(),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: 30),
                Text("Or"),
                MyCustomIcon(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
