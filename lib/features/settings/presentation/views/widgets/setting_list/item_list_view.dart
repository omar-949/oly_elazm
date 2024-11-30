import 'package:flutter/material.dart';
import 'package:oly_elazm/core/helpers/app_size.dart';
import 'package:oly_elazm/core/helpers/extentions.dart';
import '../../../../../../core/routing/named_router.dart';
import 'custom_list_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.w358,
      height: AppSize.h207,
      child: ListView(
        children: [
          CustomListItem(
            icon: 'assets/svgs/tabler_edit.svg',
            label: 'تعديل الملف الشخصي',
            onTap: () {
              context.pushNamed(Routes.editProfileView);
            },
          ),
          Divider(),
          CustomListItem(
            icon: 'assets/svgs/discord_boost.svg',
            label: 'عدد النقاط',
            onTap: () {
              // Handle navigation or logic here
            },
          ),
          Divider(),
          CustomListItem(
            icon: 'assets/svgs/Verified_Person.svg',
            label: 'المُحفظ',
            onTap: () {
              // Handle navigation or logic here
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
