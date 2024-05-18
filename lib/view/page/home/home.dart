import 'package:flutter/material.dart';
import 'package:t_portfolio/utils/app_text_style.dart';

import '../../widgets/widgets.dart';

part 'home_introduction.dart';
part 'home_personal_image.dart';
part 'home_quotes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionScaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: HomeIntroduction()),
              Expanded(child: HomePersonalImage()),
            ],
          ),
          HomeQuotes(),
        ],
      ),
    );
  }
}