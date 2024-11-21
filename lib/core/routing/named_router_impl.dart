import 'package:flutter/material.dart';
import 'package:oly_elazm/core/widgets/main_navigator.dart';
import 'package:oly_elazm/features/auth/presentation/views/forget_password_view.dart';
import 'package:oly_elazm/features/auth/presentation/views/login_sign_up_view.dart';
import 'package:oly_elazm/features/auth/presentation/views/reset_password_view.dart';
import 'package:oly_elazm/features/auth/presentation/views/verification_code_view.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students_progress/student_progress.dart';
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
      case Routes.userInfo:
        return MaterialPageRoute(
          builder: (_) => const UserPreferences(),
        );
      case Routes.loginSignUpScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginSignUpView(),
        );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordView(),
        );
      case Routes.verificationCodeScreen:
        return MaterialPageRoute(
          builder: (_) => const VerificationCodeView(),
        );
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordView(),
        );
      case Routes.mainNav:
        return MaterialPageRoute(
          builder: (_) => const MainNavigator(),
        );
      case Routes.studentProgress:
        return MaterialPageRoute(
          builder: (_) => const StudentProgress(),
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
