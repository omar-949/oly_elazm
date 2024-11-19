import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/chapters.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/country_and_lang.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/percent_bar.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/pick_gender.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/pick_role.dart';

class UserInfoBody extends StatefulWidget {
  const UserInfoBody({super.key});

  @override
  State<UserInfoBody> createState() => _UserInfoBodyState();
}

class _UserInfoBodyState extends State<UserInfoBody> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  bool? isStudent;
  bool? isMale;
  double percent = 0.0;

  void updateRole(bool value) {
    setState(() {
      isStudent = value;
      percent = percentCalculator();
    });
  }

  void updateGender(bool value) {
    setState(() {
      isMale = value;
      percent = percentCalculator();
    });
  }

  double percentCalculator() {
    if (currentIndex == 0) return 0.0;
    if (currentIndex == 1) return isStudent == true ? 1 / 3 : 1 / 2;
    return isStudent == true ? 2 / 3 : 1.0;
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
      if(isStudent == true)const Chapters(),
    ];

    return SafeArea(
      child: Column(
        children: [
          if (currentIndex >= 1)
            Padding(
              padding: EdgeInsets.only(top: 70.h, bottom: 24.h),
              child: PercentBar(percent: percent),
            ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: widgets.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return widgets[index];
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50.h),
            child: CustomAppButton(
              onTap: () {
                if (currentIndex < widgets.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              title: currentIndex < widgets.length - 1 ? 'التالي' : 'تم',
            ),
          ),
        ],
      ),
    );
  }
}
