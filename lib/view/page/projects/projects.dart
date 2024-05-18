import 'package:flutter/material.dart';

import '../../../utils/app_text_style.dart';
import '../../widgets/widgets.dart';

part 'projects_body.dart';
part 'projects_item.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScaffold(
      body: Column(
        children: [
          SectionTitle(
            text: 'projects',
            style: AppTextStyle.headlineSmall,
            dividerWidth: MediaQuery.of(context).size.width * 0.2,
          ),
          const SizedBox(height: 40),
          const ProjectsBody(),
        ],
      ),
    );
  }
}