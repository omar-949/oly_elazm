import 'package:flutter/material.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/splash_view.dart';
import 'package:oly_elazm/features/user_info/presentation/views/user_info.dart';

import 'named_router.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.userPreferences:
        return MaterialPageRoute(
          builder: (_) => const UserPreferences(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
