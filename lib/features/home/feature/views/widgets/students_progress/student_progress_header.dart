import 'package:flutter/material.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students_progress/background_curved_container.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students_progress/student_image.dart';

class StudentProgressHeader extends StatelessWidget {
  const StudentProgressHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        BackgroundCurvedContainer(),
        StudentImage(),
      ],
    );
  }
}