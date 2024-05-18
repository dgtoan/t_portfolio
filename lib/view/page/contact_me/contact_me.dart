import 'package:flutter/material.dart';
import 'package:t_portfolio/view/widgets/widgets.dart';

import '../../../utils/app_text_style.dart';

part 'contact_me_content.dart';
part 'contact_me_container.dart';
part 'contact_me_item.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

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
          const Row(
            children: [
              Expanded(child: ContactMeContent()),
              SizedBox(width: 20),
              Expanded(child: ContactMeContainer()),
              SizedBox(width: 20),
              Expanded(child: ContactMeContainer()),
            ],
          ),
        ],
      ),
    );
  }
}