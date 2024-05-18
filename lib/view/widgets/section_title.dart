import 'package:flutter/material.dart';
import 'package:t_portfolio/utils/app_color.dart';
import 'package:t_portfolio/view/widgets/title_text.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
    required this.style,
    required this.dividerWidth,
  });

  final String text;
  final TextStyle style;
  final double dividerWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleText(
          text: text,
          style: style,
        ),
        const SizedBox(width: 20),
        Container(
          height: 1,
          width: dividerWidth,
          color: AppColor.primary
        ),
      ],
    );
  }
}