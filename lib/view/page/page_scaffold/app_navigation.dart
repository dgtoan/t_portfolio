import 'dart:math';

import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';
import '../../widgets/widgets.dart';
import '../../../utils/app_text_style.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = min(
      MediaQuery.of(context).size.width * 0.8,
      280,
    );
    return Container(
      width: width,
      height: MediaQuery.of(context).size.height,
      color: AppColor.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'T',
                style: AppTextStyle.titleMedium.copyWith(
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Portfolio',
                    style: AppTextStyle.titleMedium
                  ),
                ],
              ),
            ),
            ...AppNavigationItem.items
          ],
        ),
      ),
    );
  }
}