import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';
import 'package:oly_elazm/features/onboarding/data/models/drop_down_item.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/widgets/user_preferences/custom_drop_down.dart';

class UserPreferencesBody extends StatefulWidget {
  const UserPreferencesBody({super.key});

  @override
  State<UserPreferencesBody> createState() => _UserPreferencesBodyState();
}

class _UserPreferencesBodyState extends State<UserPreferencesBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomDropDown(
                    items: DropDownItem.countries,
                    title: 'البلد',
                    titleImage: 'assets/images/egypt.png',
                  ),
                  10.verticalSpace,
                  const CustomDropDown(
                    items: DropDownItem.countries,
                    title: 'اللغه',
                    titleImage: 'assets/images/language.png',
                  ),
                  10.verticalSpace,
                  const CustomDropDown(
                    items: DropDownItem.countries,
                    title: 'المهنة',
                    titleImage: 'assets/images/Careers.png',
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 50.h, top: 25.h),
          child: CustomAppButton(
            onTap: () {},
            title: 'التالي',
          ),
        )
      ],
    );
  }
}
