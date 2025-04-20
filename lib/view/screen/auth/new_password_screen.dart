import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/screen/auth/home_screen.dart';
import 'package:job_app/view/widget/my_custom_button.dart';
import 'package:job_app/view/widget/my_custom_icon.dart';
import 'package:job_app/view/widget/my_custom_input_textfield.dart';
import 'package:job_app/view/widget/my_custom_text.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
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
                  text: AppText.newPassword,
                  textColor: AppColor.appColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 100),
                MyCustomInputTextfield(
                  label: "New Password",
                  keybord: TextInputType.number,
                  controller: _newPasswordController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                MyCustomInputTextfield(
                  label: "Confirm Password",
                  keybord: TextInputType.number,
                  controller: _confirmPasswordController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your password';
                    } if(value.length <= 7){
                      return "Enter 8 dist password";
                    }
                    if (value != _newPasswordController.text) {
                      return "Password don't match";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 100),
                MyCustomButton(
                  text: "Confirm",
                  width: double.maxFinite,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  },
                ),
                SizedBox(height: 20),
                MyCustomIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
