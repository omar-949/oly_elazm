import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final void Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46.h,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFA85000),
              Color(0xFF522700),
            ],
            stops: [0.2, 1.0],
          ),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.font18SemiBold(),
          ),
        ),
      ),
    );
  }
}
