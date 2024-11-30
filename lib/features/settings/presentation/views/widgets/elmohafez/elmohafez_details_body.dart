import 'package:flutter/material.dart';
import 'package:oly_elazm/features/settings/presentation/views/widgets/student_header_section.dart';
class ElmohafezDetailsBody extends StatelessWidget {
  const ElmohafezDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        StudentHeaderSection(studentName: 'أحمد عمرو')
      ],
    );
  }
}
