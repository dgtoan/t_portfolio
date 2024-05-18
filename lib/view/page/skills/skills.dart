import 'package:flutter/material.dart';
import 'package:t_portfolio/utils/app_text_style.dart';
import '../../widgets/widgets.dart';

part 'skills_body.dart';
part 'skills_item.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScaffold(
      body: Column(
        children: [
          SectionTitle(
            text: 'skills',
            style: AppTextStyle.headlineSmall,
            dividerWidth: MediaQuery.of(context).size.width * 0.2,
          ),
          const SizedBox(height: 40),
          const SkillsBody(),
        ],
      ),
    );
  }
}