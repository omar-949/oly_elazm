import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/chapters_box.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/not_started_yet.dart';

class Chapters extends StatelessWidget {
  const Chapters({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'عند اي جزء توقفت..؟',
            style: AppTextStyle.font18SemiBold(color: Colors.black),
          ),
          20.verticalSpace,
          const ChaptersBox(),
          NotStartedCheckbox(
            initialValue: false,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}



