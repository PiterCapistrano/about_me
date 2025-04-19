import 'package:about_me/src/features/home/home_page_view.dart';
import 'package:about_me/src/common/constants/route.dart';
import 'package:about_me/src/common/themes/default_theme.dart';
import 'package:about_me/src/features/projects/projects_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      initialRoute: NamedRoute.home,
      routes: {
        NamedRoute.home: (context) => const HomePageView(),
        NamedRoute.projects: (context) => const ProjectsScreen(),
        NamedRoute.blog: (context) => const Placeholder(),
        NamedRoute.games: (context) => const Placeholder(),
      },
    );
  }
}
