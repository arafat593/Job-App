import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';
import 'package:job_app/core/app_text.dart';
import 'package:job_app/view/widget/my_custom_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

List<Map<String, dynamic>> profileItem = [
  {
    'title': 'Edit Profile',
    'icon': Icons.edit
  },
  {
    'title': 'Resume',
    'icon': Icons.star,
  },
  {
    'title' : 'Notification',
    'icon' : Icons.notifications
  },
  {
    'title' : 'Settings',
    'icon' : Icons.settings
  },
  {
    'title' : 'Notification',
    'icon' : Icons.notifications
  },
];

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Icon(Icons.person, size: 200, color: AppColor.appColor,),
            SizedBox(height: 50),
            Text(AppText.profileName, style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 1),),
            Text(AppText.profileDesignation, style: TextStyle(fontSize: 15,),),
            Expanded(child: ListView.builder(
                itemCount: profileItem.length,
                itemBuilder: (context, index) {
                  return MyCustomCard(
                      editProfileIcon: Icon(profileItem[index]['icon']),
                      editProfileText: profileItem[index]['title']);
                }))
          ],
        ),
      ),
    );
  }
}
