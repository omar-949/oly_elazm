import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/country_and_lang.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/pick_gender.dart';

class UserInfoBody extends StatefulWidget {
  const UserInfoBody({super.key});

  @override
  State<UserInfoBody> createState() => _UserInfoBodyState();
}

class _UserInfoBodyState extends State<UserInfoBody> {
  int pageCounter = 0;

  Widget switchingView() {
    switch (pageCounter) {
      case 0:
        return const PickGender();
      case 1:
        return const CountryAndLang();
      default:
        return const PickGender();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          switchingView(),
          Padding(
            padding: EdgeInsets.only(bottom: 50.h, top: 25.h),
            child: CustomAppButton(
              onTap: () {
                setState(() {
                  pageCounter++;
                });
              },
              title: 'التالي',
            ),
          )
        ],
      ),
    );
  }
}
