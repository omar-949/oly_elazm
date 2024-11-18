String svgIconsName(String? icon) {
  return 'assets/icons/$icon.svg';
}

String pngImageName(String? image) {
  return 'assets/images/$image.png';
}

class AppIcons {
  static String get logoIcon => svgIconsName('logo');
  static String get egyptIcon => svgIconsName('egypt');
}

class AppImages {
  static String get logoIcon => pngImageName('logo');
  static String get egyptLogo => pngImageName('egypt');
  static String get onboarding1 => pngImageName('onboarding1');
  static String get onboarding2 => pngImageName('onboarding2');
  static String get onboarding3 => pngImageName('onboarding3');
}
