import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/auth_text_field.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/login_sign_up/social_buttons.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        24.verticalSpace,
        AuthTextField(
          title: 'البريد الالكتروني',
          hint: 'ادخل بريدك الالكتروني',
          controller: emailController,
          type: TextInputType.emailAddress,
        ),
        24.verticalSpace,
        AuthTextField(
          title: 'كلمة المرور',
          hint: 'ادخل كلمة المرور',
          controller: passwordController,
          isPassword: true,
        ),
        6.verticalSpace,
        Text(
          'نسيت كلمة المرور؟',
          style: AppTextStyle.font16Regular(color: AppColors.secondaryAppColor),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h),
          child: CustomAppButton(onTap: () {}, title: 'تسجيل الدخول'),
        ),
        const SocialButtons()

      ],
    );
  }
}
