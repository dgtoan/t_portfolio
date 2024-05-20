import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text,
    required this.style,
  });

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '#',
        style: style.copyWith(color: AppColor.primary),
        children: [
          TextSpan(
            text: text,
            style: style
          ),
        ],
      ),
    );
  }
}