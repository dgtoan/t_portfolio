part of 'skills.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<Skill>> skills = Skill.skills;
    skills.shuffle();
    // split the skills into two rows
    final List<Skill> firstRow = Skill.skills.sublist(0, skills.length ~/ 2).expand((element) => element).toList();
    final List<Skill> secondRow = Skill.skills.sublist(skills.length ~/ 2).expand((element) => element).toList();
    return Column(
      children: [
        SkillsCarousel(items: firstRow, isNext: true),
        SkillsCarousel(items: secondRow, isNext: false),
      ],
    );
  }
}