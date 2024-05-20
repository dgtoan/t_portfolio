import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../utils/section_key.dart';
import 'page/page_scaffold/app_navigation.dart';
import 'page/page.dart';
class TPortfolio extends StatelessWidget {
  const TPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(
        ResponsiveBreakpoints.of(context).isMobile ? 'Mobile' : 
        ResponsiveBreakpoints.of(context).isTablet ? 'Tablet' : 
        ResponsiveBreakpoints.of(context).isDesktop ? 'Desktop' : 
        '4K'
      );
    }

    // show dialog noti that the website is under development
    Future.delayed(const Duration(seconds: 1), () => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Under Development'),
        content: const Text('This website is still under development. Some features may not work as expected.'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    ));

    final bool isLargeScreen = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    return AppScaffold(
      header: AppHeader(isLargeScreen: isLargeScreen),
      navigation: isLargeScreen ? null : const AppNavigation(),
      home: Home(key: SectionKey.home, isLargeScreen: isLargeScreen),
      projects: Projects(key: SectionKey.projects),
      skills: Skills(key: SectionKey.skills),
      aboutMe: AboutMe(key: SectionKey.aboutMe, isLargeScreen: isLargeScreen),
      contactMe: ContactMe(key: SectionKey.contactMe, isLargeScreen: isLargeScreen),
      footer: const AppFooter(),
    );
  }
}