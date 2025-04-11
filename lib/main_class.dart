import 'package:flutter/material.dart';
import 'package:job_app/view/screen/auth/forgot_password_screen.dart';
import 'package:job_app/view/screen/auth/new_password_screen.dart';
import 'package:job_app/view/screen/auth/register_acconut_screen.dart';
import 'package:job_app/view/screen/auth/login_screen.dart';
import 'package:job_app/view/screen/auth/verification_screen.dart';
import 'package:job_app/view/screen/splash_screen.dart';

class JobApp extends StatelessWidget {
  const JobApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobApp',
      home: SplashScreen(),
    );
  }
}
