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

  static TextStyle font32SemiBold({Color? color = Colors.black}) => TextStyle(
        fontSize: 32.sp,
        color: color,
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle font32Bold({Color? color = Colors.black}) => TextStyle(
        fontSize: 32.sp,
        color: color,
        fontWeight: FontWeightHelper.bold,
      );

  static TextStyle font18SemiBold({Color? color = Colors.black}) => TextStyle(
        fontSize: 18.sp,
        color: color,
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle font16SemiBold({Color? color = Colors.black}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle font16Medium({Color? color = Colors.black}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle font18Medium({Color? color = Colors.black}) => TextStyle(
        fontSize: 18.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle font16Regular({Color? color = Colors.black}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: FontWeightHelper.regular,
      );

  static TextStyle font14Regular({Color? color = Colors.black}) => TextStyle(
        fontSize: 14.sp,
        color: color,
        fontWeight: FontWeightHelper.regular,
      );

  static TextStyle font20Regular({Color? color = Colors.black}) => TextStyle(
        fontSize: 20.sp,
        color: color,
        fontWeight: FontWeightHelper.regular,
      );  static TextStyle font20Medium({Color? color = Colors.black}) => TextStyle(
        fontSize: 20.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle font24Regular({Color? color = Colors.black}) => TextStyle(
        fontSize: 24.sp,
        color: color,
        fontWeight: FontWeightHelper.regular,
      );
}
