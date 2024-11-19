import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/auth_text_field.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/login_sign_up/license_check_box.dart';
import 'package:oly_elazm/features/auth/presentation/views/widgets/login_sign_up/social_buttons.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late final TextEditingController emailController;
  late final TextEditingController phoneNumberController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          title: 'رقم الهاتف',
          hint: 'ادخل رقم الهاتف',
          controller: emailController,
          type: TextInputType.number,
        ),
        24.verticalSpace,
        AuthTextField(
          title: 'كلمة المرور',
          hint: 'ادخل كلمة المرور',
          controller: passwordController,
          isPassword: true,
        ),
        8.verticalSpace,
        const LicenseCheckBox(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h),
          child: CustomAppButton(onTap: () {}, title: 'تسجيل الدخول'),
        ),
        const SocialButtons(),
      ],
    );
  }
}
