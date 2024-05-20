part of 'skills.dart';

class SkillsItem extends StatelessWidget {
  const SkillsItem({super.key, required this.skill});

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: skill.level >= 4 ? AppColor.primary: Colors.white.withOpacity(0.5),
          width: skill.level == 5 ? 2 : 1,
        ),
      ),
      child: Column(
        children: [
          if (skill.icon.endsWith('.svg'))
            SvgPicture.asset(
              skill.icon,
              width: 64,
              height: 64,
            )
          else if (skill.icon.endsWith('.png'))
            Image.asset(
              skill.icon,
              width: 64,
              height: 64,
            )
          else
            const SizedBox(width: 64, height: 64),
          Expanded(
            child: Center(
              child: Text(
                skill.name,
                style: AppTextStyle.labelMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}