import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
