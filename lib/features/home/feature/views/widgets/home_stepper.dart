import 'package:flutter/material.dart';

class HomeStepper extends StatelessWidget {
  final int currentStep;
  final int? totalSteps;

  const HomeStepper({
    super.key,
    required this.currentStep,
    this.totalSteps = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
