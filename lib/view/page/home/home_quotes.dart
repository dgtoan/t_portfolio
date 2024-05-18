part of 'home.dart';

class HomeQuotes extends StatelessWidget {
  const HomeQuotes({super.key});

  // my favorite quotes
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '“The only way to do great work is to love what you do.”',
          style: AppTextStyle.titleLarge,
        ),
        const SizedBox(height: 20),
        Text(
          '- Steve Jobs',
          style: AppTextStyle.titleLarge.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}