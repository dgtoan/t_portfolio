part of 'home.dart';

class HomeIntroduction extends StatelessWidget {
  const HomeIntroduction({super.key});

// introduce about me
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'I am a software engineer.',
          style: AppTextStyle.headlineLarge,
        ),
        const SizedBox(height: 20),
        Text(
          'I am a software engineer who loves to learn new things and solve problems.',
          style: AppTextStyle.bodyLarge.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}