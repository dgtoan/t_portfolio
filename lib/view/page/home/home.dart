import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/app_text_style.dart';
import '../../../utils/assets.dart';
import '../../../utils/constants.dart';
import '../../../utils/app_color.dart';
import '../../widgets/widgets.dart';

part 'home_introduction.dart';
part 'home_personal_image.dart';
part 'home_quotes.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.isLargeScreen});

  final bool isLargeScreen;

  @override
  Widget build(BuildContext context) {
    return SectionScaffold(
      body: Column(
        children: [
          ResponsiveRowColumn(
            layout: isLargeScreen
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
            rowSpacing: 32,
            columnSpacing: 32,
            children: const [
              ResponsiveRowColumnItem(rowFlex: 1,child: HomeIntroduction(),),
              ResponsiveRowColumnItem(rowFlex: 1, child: HomePersonalImage()),
            ],
          ),
          const SizedBox(height: 64),
          const HomeQuotes(),
        ],
      ),
    );
  }
}