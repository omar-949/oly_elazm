import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';

class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'نسيت كلمة المرور؟',
            style: AppTextStyle.font20Medium(
                color: AppColors.secondaryAppColor),
          ),
          16.verticalSpace,
          Text(
            'أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك، وسنرسل لك رمز التأكيد',
            style: AppTextStyle.font16Regular(color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
