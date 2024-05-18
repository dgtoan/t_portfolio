part of 'contact_me.dart';

class ContactMeContent extends StatelessWidget {
  const ContactMeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'I\'m a Flutter Developer based in Jakarta, Indonesia. I\'m currently available for freelance work. If you have a project that you want to get started, think you need my help with something or just fancy saying hey, then get in touch.',
      style: AppTextStyle.bodyMedium.copyWith(
        color: Colors.grey,
      ),
    );
  }
}