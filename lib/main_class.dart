import 'package:flutter/material.dart';
import 'package:job_app/view/screen/splash.dart';

class JobApp extends StatelessWidget {
  const JobApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JobApp',
      home: SplashScreen(),
    );
  }
}
