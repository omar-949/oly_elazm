import 'package:flutter/material.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/background_curved_container.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_image.dart';

class StudentProgressBody extends StatelessWidget {
  const StudentProgressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: const [
              BackgroundCurvedContainer(),
              StudentImage(),
            ],
          ),
        ],
      ),
    );
  }
}
