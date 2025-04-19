import 'package:about_me/src/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroudColor,
      body: const Center(
        child: Text(
          'Blog Screen',
          style: TextStyle(fontSize: 24, color: AppColors.textColor),
        ),
      ),
    );
  }
}
