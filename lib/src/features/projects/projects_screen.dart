import 'package:about_me/src/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroudColor,
      body: const Center(
        child: Text(
          'Projects Screen',
          style: TextStyle(fontSize: 24, color: AppColors.textColor),
        ),
      ),
    );
  }
}
