import 'package:about_me/src/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroudColor,
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 24, color: AppColors.textColor),
        ),
      ),
    );
  }
}
