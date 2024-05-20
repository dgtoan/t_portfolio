part of 'home.dart';

class HomeQuotes extends StatelessWidget {
  const HomeQuotes({super.key});

  // my favorite quotes
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints(
              maxWidth: 640,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    'You must either modify your dreams or magnify your skills',
                    style: AppTextStyle.titleLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white.withOpacity(0.5),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      '- Jim Rohn',
                      style: AppTextStyle.bodyLarge.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 32,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: AppColor.background,
              child: Icon(
                Icons.format_quote,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            bottom: 56,
            right: 32,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: AppColor.background,
              child: Icon(
                Icons.format_quote,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}