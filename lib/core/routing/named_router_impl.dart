import 'package:flutter/material.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/user_preferences.dart';

import 'named_router.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SizedBox.shrink(),
        );
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.userPreferences:
        return MaterialPageRoute(
          builder: (_) => const UserPreferences(),
        );
      // case Routes.dashboard:
      //   return MaterialPageRoute(
      //     builder: (_) => MultiBlocProvider(providers: [
      //       BlocProvider( create: (context) => getIt<HomeCubit>()..getDashboard()),
      //       BlocProvider(create: (context) => AppCubit()),
      //     ], child: const HomeScreen()),
      //   );
      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<LoginCubit>(),
      //       child: const LoginScreen(),
      //     ),
      //   );
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
