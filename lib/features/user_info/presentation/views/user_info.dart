import 'package:flutter/material.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/user_info_body.dart';

class UserPreferences extends StatelessWidget {
  const UserPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserInfoBody(),
    );
  }
}
