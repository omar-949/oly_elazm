import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';

class StudentImage extends StatelessWidget {
  const StudentImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 32.h,
      child: CircleAvatar(
        radius: 50.r,
        backgroundColor: AppColors.secondaryAppColor,
        child: ClipOval(
          child: Image.asset(
            'assets/images/male.png',
            fit: BoxFit.cover,
            width: 96.r,
            height: 96.r,
          ),
        ),
      ),
    );
  }
}
