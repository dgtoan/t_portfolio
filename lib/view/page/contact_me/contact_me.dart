import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../widgets/widgets.dart';
import '../../../utils/app_text_style.dart';

part 'contact_me_content.dart';
part 'contact_me_container.dart';
part 'contact_me_item.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key, required this.isLargeScreen});

  final bool isLargeScreen;

  @override
  Widget build(BuildContext context) {
    return SectionScaffold(
      body: Column(
        children: [
          SectionTitle(
            text: 'contact-me',
            style: AppTextStyle.headlineSmall,
            dividerWidth: MediaQuery.of(context).size.width * 0.2,
          ),
          const SizedBox(height: 40),
          ResponsiveRowColumn(
            layout: isLargeScreen
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
            children: const [
              ResponsiveRowColumnItem(rowFlex: 1, child: ContactMeContent()),
              ResponsiveRowColumnItem(rowFlex: 1, child: ContactMeContainer()),
            ],
          ),
        ],
      ),
    );
  }
}