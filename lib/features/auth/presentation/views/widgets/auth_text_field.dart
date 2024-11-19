import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/core/widgets/app_text_form.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    this.type,
    this.isPassword,
    required this.validator, this.autoValidateMode,
  });

  final String title;
  final String hint;
  final TextEditingController controller;
  final TextInputType? type;
  final bool? isPassword;
  final Function(String?) validator;
  final AutovalidateMode? autoValidateMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.font16Medium(),
        ),
        8.verticalSpace,
        AppTextField(
          hint: hint,
          controller: controller,
          fillColor: Colors.white,
          borderRadius: 10,
          enabledColor: AppColors.grey,
          textStyle: AppTextStyle.font16Regular(),
          focusColor: AppColors.secondaryAppColor,
          type: type,
          isPassword: isPassword,
          validator: validator,
          autoValidateMode: autoValidateMode,
        ),
      ],
    );
  }
}
