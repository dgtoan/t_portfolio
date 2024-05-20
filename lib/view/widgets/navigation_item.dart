import 'package:flutter/material.dart';

import '../../utils/app_text_style.dart';
import '../../utils/section_key.dart';
import 'title_text.dart';

class AppNavigationItem {

  static List<Widget> items = [
    TextButton(
      onPressed: () => scrollToSection(SectionKey.home),
      child: TitleText(
        text: 'home',
        style: AppTextStyle.titleSmall,
      )
    ),
    TextButton(
      onPressed: () => scrollToSection(SectionKey.projects),
      child: TitleText(
        text: 'projects',
        style: AppTextStyle.titleSmall,
      )
    ),
    TextButton(
      onPressed: () => scrollToSection(SectionKey.skills),
      child: TitleText(
        text: 'skills',
        style: AppTextStyle.titleSmall,
      )
    ),
    TextButton(
      onPressed: () => scrollToSection(SectionKey.aboutMe),
      child: TitleText(
        text: 'about-me',
        style: AppTextStyle.titleSmall,
      )
    ),
    TextButton(
      onPressed: () => scrollToSection(SectionKey.contactMe),
      child: TitleText(
        text: 'contact-me',
        style: AppTextStyle.titleSmall,
      )
    ),
  ];

  static void scrollToSection(GlobalKey key) {
    BuildContext context = key.currentContext!;
    if (Scaffold.of(context).isDrawerOpen) {
      Navigator.of(context).pop();
    }
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}