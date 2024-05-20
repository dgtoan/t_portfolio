part of 'projects.dart';

class ProjectsBody extends StatelessWidget {
  const ProjectsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProjectsItem(),
          SizedBox(width: 20),
          ProjectsItem(),
          SizedBox(width: 20),
          ProjectsItem(),
        ],
      ),
    );
  }
}