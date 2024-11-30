import 'package:flutter/material.dart';
import 'package:oly_elazm/core/widgets/background_curved_container.dart';
import 'package:oly_elazm/core/widgets/student_image.dart';

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