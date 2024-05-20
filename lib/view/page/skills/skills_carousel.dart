part of 'skills.dart';

class SkillsCarousel extends StatefulWidget {
  const SkillsCarousel({super.key, required this.items, required this.isNext});

  final List<Skill> items;
  final bool isNext;

  @override
  State<SkillsCarousel> createState() => _SkillsCarouselState();
}

class _SkillsCarouselState extends State<SkillsCarousel> {

  late InfiniteScrollController _controller;
  late Timer timer;


  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: 0);
    timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
      if (widget.isNext) {
        _controller.nextItem(duration: const Duration(seconds: 1));
      } else {
        _controller.previousItem(duration: const Duration(seconds: 1));
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    timer.cancel();
  }
  
  @override
  Widget build(BuildContext context) {
    final bool isLargeScreen = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          height: 120,
          child: InfiniteCarousel.builder(
            itemCount: widget.items.length,
            itemExtent: isLargeScreen ? 212 : 120,
            scrollBehavior: kIsWeb
                ? ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      // Allows to swipe in web browsers
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse
                    },
                  )
                : null,
            loop: true,
            controller: _controller,
            onIndexChanged: (index) {},
            itemBuilder: (context, itemIndex, realIndex) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: isLargeScreen ? 56 : 10.0),
                child: GestureDetector(
                  onTap: () {
                  },
                  child: SkillsItem(skill: widget.items[itemIndex])
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
