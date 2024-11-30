import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/core/widgets/student_progress_header.dart';

class StudentHeaderSection extends StatelessWidget {
  final String studentName;

  const StudentHeaderSection({
    super.key,
    required this.studentName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudentProgressHeader(),
        SizedBox(height: 15.h),
        Text(
          studentName,
          style: AppTextStyle.font20SemiBold(),
        ),
      ],
    );
  }
}
