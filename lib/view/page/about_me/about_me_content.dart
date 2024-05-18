part of 'about_me.dart';

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({ super.key });

  @override
  Widget build(BuildContext context) {
    return Text(
      'I am a software engineer with a passion for mobile application development. I have experience in developing mobile applications using Flutter and native Android. I am also familiar with backend development using Node.js and Express.js. I am a quick learner and I am always eager to learn new technologies.',
      style: AppTextStyle.bodyMedium.copyWith(
        color: Colors.grey,
      ),
    );
  }
}