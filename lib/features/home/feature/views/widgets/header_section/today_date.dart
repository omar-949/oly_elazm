import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';

class TodayDate extends StatelessWidget {
  const TodayDate({super.key});

  @override
  Widget build(BuildContext context) {
    final gregorianDate =
        DateFormat('EEEE , d MMMM', 'ar').format(DateTime.now());

    final hijriDate = HijriCalendar.fromDate(DateTime.now());

    final hijriMonthsArabic = [
      "محرم",
      "صفر",
      "ربيع الأول",
      "ربيع الآخر",
      "جمادى الأولى",
      "جمادى الآخرة",
      "رجب",
      "شعبان",
      "رمضان",
      "شوّال",
      "ذو القعدة",
      "ذو الحجة"
    ];

    final hijriFormattedDate = '${hijriDate.hDay} ${hijriMonthsArabic[hijriDate.hMonth - 1]} | ${hijriDate.hYear} هجري';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          gregorianDate,
          style: AppTextStyle.font16Regular(color: Colors.white),
        ),
        5.verticalSpace,
        Text(
          hijriFormattedDate,
          style: AppTextStyle.font16Regular(color: Colors.white),
        ),
      ],
    );
  }
}
