import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/header_section/header_section.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/stepper/home_stepper.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSection(),
          12.verticalSpace,
          HomeStepper(
            currentStep: 3,
          ),
          24.verticalSpace,
          StudentSection(),
        ],
      ),
    );
  }
}
