import 'package:flutter/material.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/header_section/header_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSection()
        ],
      ),
    );
  }
}
