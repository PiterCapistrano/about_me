import 'dart:developer';

import 'package:about_me/src/common/constants/app_colors.dart';
import 'package:about_me/src/common/constants/widgets/menu.dart';
import 'package:about_me/src/common/models/nav_item.dart';
import 'package:about_me/src/features/blog/blog_screen.dart';
import 'package:about_me/src/features/games/games_screen.dart';
import 'package:about_me/src/features/home/home_screen.dart';
import 'package:about_me/src/features/projects/projects_screen.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final pageController = PageController();
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final page = pageController.page?.round() ?? 0;
      if (page != _selectedIndex) {
        setState(() => _selectedIndex = page);
      }
      log('Page changed to $page');
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroudColor,
      appBar: Menu(
        selectedItemColor: AppColors.titleColor,
        unselectedItemColor: AppColors.textColor,
        children: [
          NavItem(
            title: 'Home',
            onTap: () {
              pageController.jumpToPage(0);
            },
          ),
          NavItem(
            title: 'Projects',
            onTap: () {
              pageController.jumpToPage(1);
            },
          ),
          NavItem(
            title: 'Blog',
            onTap: () {
              pageController.jumpToPage(2);
            },
          ),
          NavItem(
            title: 'Games',
            onTap: () {
              pageController.jumpToPage(3);
            },
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          ProjectsScreen(),
          BlogScreen(),
          GamesScreen(),
        ],
      ),
    );
  }
}
