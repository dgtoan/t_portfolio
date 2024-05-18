class AppConst {
  static const String appName = 'T Portfolio';
  static const HomeIntroduction introduction = HomeIntroduction();
  static const String introduceDetail = 'I\'m currently into Flutter, Android native, and web development.';
}

class HomeIntroduction {
  const HomeIntroduction();
  String get hi => 'Hi, I\'m ';
  String get highlight => 'Duong Toan';
  String get sub => ', a mobile developer.';
}