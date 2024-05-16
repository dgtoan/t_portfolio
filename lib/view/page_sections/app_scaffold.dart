part of '../app.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'T',
                  style: AppTextStyle.displayLargePrimary,
                  children: [
                    TextSpan(
                      text: 'Portfolio',
                      style: AppTextStyle.displayLarge
                    )
                  ]
                )
              ),
            )
          ],
        ),
      )
    );
  }
}