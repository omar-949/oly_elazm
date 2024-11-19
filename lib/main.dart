import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oly_elazm/core/routing/named_router_impl.dart';
import 'package:oly_elazm/oly_elazm.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemUIConfig.configure();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
      ],
      path: 'assets/translations',
      child: OlyElazm(
        appRouter: AppRouter(),
      ),
    ),
  );
}

class SystemUIConfig {
  static void configure() {
    setSystemUIStyles();
    lockPortraitMode();
  }

  // the status bar at the top and bottom nav bar colors
  static void setSystemUIStyles() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
      ),
    );
  }

  // disable device orientation
  static void lockPortraitMode() {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
  }
}
