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

  final TextEditingController _codeController = TextEditingController();
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
                  controller: _codeController,
                  validator: (String? value){
                    if(value == null || value.isEmpty){
                      return "Enter your code";
                    } if(value.length<=3){
                      return "Enter Valid Code";
                    } return null;
                  },
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
                    if(_formKey.currentState!.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewPasswordScreen(),
                        ),
                      );
                    }
        
                  },
                ),
                SizedBox(height: 50),
                Text('Or'),
                SizedBox(height: 20),
                MyCustomIcon(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
