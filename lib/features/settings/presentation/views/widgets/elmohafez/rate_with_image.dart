import 'package:flutter/material.dart';
import 'package:oly_elazm/core/helpers/extentions.dart';

class RateWithImage extends StatelessWidget {
  final String imagePath;

  const RateWithImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        25.pw,
        Image.asset(imagePath),
      ],
    );
  }
}
