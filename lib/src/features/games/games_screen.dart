import 'package:about_me/src/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroudColor,
      body: const Center(
        child: Text(
          'Games Screen',
          style: TextStyle(fontSize: 24, color: AppColors.textColor),
        ),
      ),
    );
  }
}
