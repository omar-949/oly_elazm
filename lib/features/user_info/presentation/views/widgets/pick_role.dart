import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/user_info_item.dart';

class PickRole extends StatelessWidget {
  final bool? isStudent;
  final Function(bool) onSelectionChanged;

  const PickRole({
    super.key,
    required this.isStudent,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'هل انت..؟',
          style: AppTextStyle.font18SemiBold(color: Colors.black),
        ),
        20.verticalSpace,
        GestureDetector(
          onTap: () {
            onSelectionChanged(true);
          },
          child: UserInfoItem(
            image: 'assets/images/male.png',
            info: 'طالب',
            isSelected: isStudent == true,
          ),
        ),
        64.verticalSpace,
        GestureDetector(
          onTap: () {
            onSelectionChanged(false);
          },
          child: UserInfoItem(
            image: 'assets/images/female.png',
            info: 'محفظ',
            isSelected: isStudent == false,
          ),
        ),
      ],
    );
  }
}
