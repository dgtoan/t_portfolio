import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_text_style.dart';
import '../../../utils/skill_data.dart';
import '../../widgets/widgets.dart';

part 'skills_body.dart';
part 'skills_item.dart';
part 'skills_carousel.dart';
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