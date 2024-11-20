import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/helpers/extentions.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 30.h,
          width: 30.w,
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.secondaryAppColor),
          ),
          child: Center(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
