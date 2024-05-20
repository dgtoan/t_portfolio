import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:t_portfolio/view/widgets/widgets.dart';

import '../../../utils/app_text_style.dart';

part 'about_me_content.dart';
part 'about_me_image.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key, required this.isLargeScreen});

  final bool isLargeScreen;

  @override
  Widget build(BuildContext context) {
    return SectionScaffold(
      body: Column(
        children: [
          SectionTitle(
            text: 'about-me',
            style: AppTextStyle.headlineSmall,
            dividerWidth: MediaQuery.of(context).size.width * 0.2,
          ),
          const SizedBox(height: 40),
          ResponsiveRowColumn(
            layout: isLargeScreen
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
            children: const [
              ResponsiveRowColumnItem(rowFlex: 1, child: AboutMeContent()),
              ResponsiveRowColumnItem(rowFlex: 1, child: AboutMeImage()),
            ],
          ),
        ],
      ),
    );
  }
}