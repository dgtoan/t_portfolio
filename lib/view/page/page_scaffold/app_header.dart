import 'package:flutter/material.dart';
import 'package:t_portfolio/utils/app_color.dart';
import 'package:t_portfolio/utils/app_text_style.dart';
import 'package:t_portfolio/utils/section_key.dart';
import 'package:t_portfolio/view/widgets/title_text.dart';

class AppHeader extends AppBar {
  AppHeader({super.key})
    : super(
        title: Text(
          'T Portfolio',
          style: AppTextStyle.titleMedium,
        ),
        backgroundColor: AppColor.background,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                ),
              onPressed: () {Scaffold.of(context).openDrawer();},
            );
          }
        ),
        actions: [
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
        ]
      );

  static void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}