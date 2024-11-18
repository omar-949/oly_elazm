import 'package:flutter/material.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/widgets/user_preferences/user_preferences_body.dart';

class UserPreferences extends StatelessWidget {
  const UserPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserPreferencesBody(),
    );
  }
}
