import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_text_style.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'T',
                  style: AppTextStyle.displayLargePrimary,
                  children: [
                    TextSpan(
                      text: 'Portfolio',
                      style: AppTextStyle.displayLarge
                    )
                  ]
                )
              ),
            )
          ],
        ),
      )
    );
  }
}