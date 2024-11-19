import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/country_and_lang.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/pick_gender.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/pick_role.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class UserInfoBody extends StatefulWidget {
  const UserInfoBody({super.key});

  @override
  State<UserInfoBody> createState() => _UserInfoBodyState();
}

class _UserInfoBodyState extends State<UserInfoBody> {
  int currentIndex = 0;
  bool? isStudent;
  bool? isMale;
  double percent = 0.0;

  // Function to update the role (student or teacher)
  void updateRole(bool value) {
    setState(() {
      isStudent = value;
      percent = percentCalculator(); // Recalculate percent when role changes
    });
  }

  // Function to update the gender (male or female)
  void updateGender(bool value) {
    setState(() {
      isMale = value;
      percent = percentCalculator(); // Recalculate percent when gender changes
    });
  }

  // Function to calculate the percent value based on currentIndex and isStudent
  double percentCalculator() {
    double calculatedPercent = 0.0;

    // Determine percent based on the current step and role (student or not)
    if (currentIndex == 0) {
      calculatedPercent = 0.0; // Step 0 (Country & Language)
    } else if (currentIndex == 1) {
      // Step 1 (Pick Role)
      if (isStudent == true) {
        calculatedPercent = 1 / 3; // Student: 33%
      } else if (isStudent == false) {
        calculatedPercent = 1 / 2; // Non-student: 50%
      }
    } else if (currentIndex == 2) {
      // Step 2 (Pick Gender)
      if (isStudent == true) {
        calculatedPercent = 2 / 3; // Student: 66%
      } else if (isStudent == false) {
        calculatedPercent = 1.0; // Non-student: 100%
      }
    }

    return calculatedPercent.clamp(0.0, 1.0); // Ensure percent is within 0-1
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      const CountryAndLang(),
      PickRole(
        isStudent: isStudent,
        onSelectionChanged: updateRole,
      ),
      PickGender(
        isMale: isMale,
        onSelectionChanged: updateGender,
      ),
    ];

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (currentIndex >= 1)
                  LinearPercentIndicator(
                    lineHeight: 12.h,
                    percent: percent,
                    animation: true,
                    animateFromLastPercent: true,
                    isRTL: true,
                    progressColor: AppColors.mainAppColor,
                    backgroundColor: const Color(0xffD9D9D9),
                    barRadius: Radius.circular(12.r),
                  ),
                20.verticalSpace,
                Center(
                  child: widgets[currentIndex],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50.h, top: 25.h),
            child: CustomAppButton(
              onTap: () {
                setState(() {
                  if (currentIndex < widgets.length - 1) {
                    currentIndex++;
                  }
                });
              },
              title: currentIndex < widgets.length - 1 ? 'التالي' : 'تم',
            ),
          ),
        ],
      ),
    );
  }
}
