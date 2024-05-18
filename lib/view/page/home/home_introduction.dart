part of 'home.dart';

class HomeIntroduction extends StatelessWidget {
  const HomeIntroduction({super.key});

// introduce about me
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: AppConst.introduction.hi,
            style: AppTextStyle.headlineLarge,
            children: [
              TextSpan(
                text: AppConst.introduction.highlight,
                style: AppTextStyle.headlineLarge.copyWith(
                  color: AppColor.primary,
                ),
              ),
              TextSpan(
                text: AppConst.introduction.sub,
                style: AppTextStyle.headlineLarge,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          AppConst.introduceDetail,
          style: AppTextStyle.bodyLarge.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}