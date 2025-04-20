import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_app/core/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        backgroundColor: AppColor.appColor,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit))
        ],
      ),
      drawer: Drawer(
        backgroundColor: CupertinoColors.systemGrey5,
        child: Column(
        ),
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.search), label: 'Search')
      ])
    );
  }
}
