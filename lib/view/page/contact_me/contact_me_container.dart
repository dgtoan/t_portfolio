part of 'contact_me.dart';

class ContactMeContainer extends StatelessWidget {
  const ContactMeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          ContactMeItem(),
          SizedBox(height: 20),
          ContactMeItem(),
          SizedBox(height: 20),
          ContactMeItem(),
        ],
      ),
    );
  }
}