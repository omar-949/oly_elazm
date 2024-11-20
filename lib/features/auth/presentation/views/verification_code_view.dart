import 'package:flutter/material.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/verification_code/verification_code_body.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerificationCodeBody(),
    );
  }
}
