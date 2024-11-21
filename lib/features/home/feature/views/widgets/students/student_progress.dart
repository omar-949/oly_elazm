import 'package:flutter/material.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_progress_app_bar.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_progress_body.dart';

class StudentProgress extends StatelessWidget {
  const StudentProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StudentDetailsAppBar(),
      body: StudentProgressBody(),
    );
  }
}

