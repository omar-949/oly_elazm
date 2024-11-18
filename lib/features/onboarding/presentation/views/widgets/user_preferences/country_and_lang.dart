import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/features/onboarding/data/models/drop_down_item.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/widgets/user_preferences/custom_drop_down.dart';

class CountryAndLang extends StatelessWidget {
  const CountryAndLang({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomDropDown(
                title: 'البلد',
                titleImage: 'assets/images/egypt.png',
                items: DropDownItem.countries,
                onItemSelected: (DropDownItem value) {},
              ),
              10.verticalSpace,
              CustomDropDown(
                title: 'اللغه',
                titleImage: 'assets/images/language.png',
                items: const [],
                onItemSelected: (DropDownItem value) {},
              ),
              10.verticalSpace,
              CustomDropDown(
                title: 'المهنة',
                titleImage: 'assets/images/Careers.png',
                items: const [],
                onItemSelected: (DropDownItem value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
