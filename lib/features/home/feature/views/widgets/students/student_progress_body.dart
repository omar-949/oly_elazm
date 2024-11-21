import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_name_and_points.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_progress_header.dart';

class StudentProgressBody extends StatelessWidget {
  const StudentProgressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StudentProgressHeader(),
          16.verticalSpace,
          StudentNameAndPoints(),
        ],
      ),
    );
  }
}
