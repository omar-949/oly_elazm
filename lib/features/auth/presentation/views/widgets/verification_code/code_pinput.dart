import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:pinput/pinput.dart';

class CodePinPut extends StatelessWidget {
  const CodePinPut({
    super.key,
    required this.otpController,
  });

  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 48.w,
      height: 48.h,
      textStyle: AppTextStyle.font24Regular(),
      decoration: BoxDecoration(
        color: const Color(0xffF0F8FF),
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: AppColors.secondaryAppColor,
        width: 1.4,
      ),
      borderRadius: BorderRadius.circular(16.r),
    );
    final errorPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: AppColors.errorColor,
      ),
      borderRadius: BorderRadius.circular(16.r),
    );
    return Pinput(
      controller: otpController,
      length: 6,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      errorPinTheme: errorPinTheme,
      errorTextStyle: AppTextStyle.font14Regular(color: AppColors.errorColor),
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      validator: (value) {
        if (value!.isEmpty) {
          return "الرجاء إدخال رمز التحقق (OTP)!";
        } else if (value.length < 6) {
          return "يجب أن يتكون رمز التحقق من 6 أرقام على الأقل!";
        } else {
          return null;
        }
      },
    );
  }
}
