part of 'skills.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SkillsItem(),
        SizedBox(width: 20),
        SkillsItem(),
        SizedBox(width: 20),
        SkillsItem(),
      ],
    );
  }
}