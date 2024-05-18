import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:t_portfolio/utils/section_key.dart';
import 'package:t_portfolio/view/page/page_scaffold/app_navigation.dart';
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
    return AppScaffold(
      header: AppHeader(),
      navigation: const AppNavigation(),
      home: Home(key: SectionKey.home),
      projects: Projects(key: SectionKey.projects),
      skills: Skills(key: SectionKey.skills),
      aboutMe: AboutMe(key: SectionKey.aboutMe),
      contactMe: ContactMe(key: SectionKey.contactMe),
      footer: const AppFooter(),
    );
  }
}