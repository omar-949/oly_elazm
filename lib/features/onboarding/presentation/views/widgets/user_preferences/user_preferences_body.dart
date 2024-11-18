import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';

import 'country_and_lang.dart';

class UserPreferencesBody extends StatelessWidget {
  const UserPreferencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CountryAndLang(),
          Padding(
            padding: EdgeInsets.only(bottom: 50.h, top: 25.h),
            child: CustomAppButton(
              onTap: () {},
              title: 'التالي',
            ),
          )
        ],
      ),
    );
  }
}

