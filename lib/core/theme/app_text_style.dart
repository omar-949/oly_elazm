import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/helpers/font_weight_helper.dart';

class AppTextStyle {
  static TextStyle style({
    required double textSize,
    required Color textColor,
    required FontWeight textWeight,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: textSize,
      color: textColor,
      fontWeight: textWeight,
      decoration: decoration,
    );
  }

  static TextStyle font32SemiBold({Color? color = Colors.white}) => TextStyle(
        fontSize: 32.sp,
        color: color,
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle font18SemiBold({Color? color = Colors.white}) => TextStyle(
        fontSize: 18.sp,
        color: color,
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle font16Medium({Color? color = Colors.white}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle font24Regular({Color? color = Colors.white}) => TextStyle(
        fontSize: 24.sp,
        color: color,
        fontWeight: FontWeightHelper.regular,
      );
}
