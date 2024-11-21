import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/helpers/extentions.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';

class StudentDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudentDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('المُحفظ'),
      titleTextStyle: AppTextStyle.font20Medium(),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18.w,
        ),
      ),
      backgroundColor: Color(0xffFFD08A),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}