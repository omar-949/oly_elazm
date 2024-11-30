import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/helpers/extentions.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/core/widgets/student_image.dart';
import 'package:oly_elazm/features/settings/presentation/views/widgets/edit_profile/edit_profile_form.dart';
class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            15.ph,
            StudentImage(),
            15.ph,
            Text(
              'أحمد عمرو',
              style: AppTextStyle.font20SemiBold(),
            ),
            EditProfileForm(),
          ],
        ),
      ),
    );
  }
}