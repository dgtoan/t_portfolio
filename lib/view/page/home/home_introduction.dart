part of 'home.dart';

class HomeIntroduction extends StatelessWidget {
  const HomeIntroduction({super.key});

// introduce about me
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: AppConst.introduction.hi,
            style: AppTextStyle.headlineLarge.copyWith(
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: AppConst.introduction.highlight,
                style: AppTextStyle.headlineLarge.copyWith(
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold
                ),
              ),
              TextSpan(
                text: AppConst.introduction.sub,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          AppConst.introduceDetail,
          style: AppTextStyle.bodyLarge.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}