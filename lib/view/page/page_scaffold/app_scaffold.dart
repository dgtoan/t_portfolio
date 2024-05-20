import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/app_color.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.navigation,
    required this.header,
    required this.home,
    required this. projects,
    required this.skills,
    required this.aboutMe,
    required this.contactMe,
    required this.footer
  });

  final Widget? navigation;
  final PreferredSizeWidget header;
  final Widget home;
  final Widget projects;
  final Widget skills;
  final Widget aboutMe;
  final Widget contactMe;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: header,
      drawer: navigation,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: MaxWidthBox(
              maxWidth: 1200,
              child: Column(
                children: [
                  home,
                  projects,
                  skills,
                  aboutMe,
                  contactMe,
                  footer
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}