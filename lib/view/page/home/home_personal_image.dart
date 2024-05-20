part of 'home.dart';

class HomePersonalImage extends StatelessWidget {
  const HomePersonalImage({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = min(
      MediaQuery.of(context).size.width * 0.8,
      400
    );
    final bool isLargeScreen = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    final Widget avatar = Image.asset(
      Assets.avatar,
      fit: BoxFit.cover,
    );
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: size,
          maxHeight: size,
        ),
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: !isLargeScreen ? BoxShape.circle : BoxShape.rectangle
          ),
          child: ClipRRect(
            child: isLargeScreen ? avatar : ClipOval(child: avatar)
          ),
        ),
      ),
    );
  }
}