import 'package:flutter/material.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/app_back_button.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/forget_password/forget_password_form.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/forget_password/forget_password_header.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppBackButton(),
          ForgetPasswordHeader(),
          ForgetPasswordForm(),
        ],
      ),
    );
  }
}

