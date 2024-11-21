import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_list_view.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/students_list_header.dart';

class StudentSection extends StatelessWidget {
  const StudentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: StudentsListHeader(),
        ),
        16.verticalSpace,
        StudentListView(),
      ],
    );
  }
}
