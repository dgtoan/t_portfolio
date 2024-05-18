import 'package:flutter/material.dart';

class SectionScaffold extends StatelessWidget {
  const SectionScaffold({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        body,
        const SizedBox(height: 20),
      ],
    );
  }
}