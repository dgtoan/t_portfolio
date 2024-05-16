import 'package:flutter/material.dart';
import 'package:t_portfolio/utils/app_color.dart';
import 'package:t_portfolio/view/app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        useMaterial3: true,
      ),
      home: const TPortfolio(),
    );
  }
}
