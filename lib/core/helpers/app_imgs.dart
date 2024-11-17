String svgIconsName(String? icon) {
  return 'assets/icons/$icon.svg';
}

String pngImageName(String? image) {
  return 'assets/images/$image.png';
}

class AppIcons {
  static String get logoIcon => svgIconsName('logo');
}

class AppImages {
  static String get logoIcon => pngImageName('logo');
}
