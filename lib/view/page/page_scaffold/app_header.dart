import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_text_style.dart';
import '../../widgets/widgets.dart';

class AppHeader extends AppBar {
  AppHeader({super.key, required this.isLargeScreen})
    : super(
        title: RichText(
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
        titleSpacing: isLargeScreen ?  16 : null,
        centerTitle: !isLargeScreen,
        backgroundColor: AppColor.background,
        leading: !isLargeScreen ? Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                ),
              onPressed: () {Scaffold.of(context).openDrawer();},
            );
          }
        ) : null,
        actions: isLargeScreen ? [
          ...AppNavigationItem.items,
          const SizedBox(width: 16),
        ] : null,
      );

  final bool isLargeScreen;
}