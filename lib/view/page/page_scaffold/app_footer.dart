import 'package:flutter/material.dart';
import 'package:t_portfolio/utils/app_text_style.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '© 2024 - Built with Flutter',
            style: AppTextStyle.bodySmall
          ),
        ],
      ),
    );
  }
}