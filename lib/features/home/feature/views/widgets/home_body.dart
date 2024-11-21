import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/daily_content/daily_content.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/header_section/header_section.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/stepper/home_stepper.dart';
import 'package:oly_elazm/features/home/feature/views/widgets/students/student_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            HeaderSection(),
            12.verticalSpace,
            HomeStepper(
              currentStep: 3,
            ),
            24.verticalSpace,
            StudentSection(),
            12.verticalSpace,
            DailyContent(
              title: '۞ آية اليوم',
              content:
                  ' أَلَمۡ یَأۡنِ لِلَّذِینَ ءَامَنُوۤا۟ أَن تَخۡشَعَ قُلُوبُهُمۡ لِذِكۡرِ ٱللَّهِ وَمَا نَزَلَ مِنَ ٱلۡحَقِّ وَلَا یَكُونُوا۟ كَٱلَّذِینَ أُوتُوا۟ ٱلۡكِتَـٰبَ مِن قَبۡلُ فَطَالَ عَلَیۡهِمُ ٱلۡأَمَدُ فَقَسَتۡ قُلُوبُهُمۡۖ وَكَثِیرࣱ مِّنۡهُمۡ فَـٰسِقُونَ﴾',
            ),
            DailyContent(
              title: '۞ حديث اليوم',
              content:
                  'قال رسول الله صلى الله عليه وسلم: (إنَّ مِن أحبِّكم إليَّ وأقربِكُم منِّي مجلسًا يومَ القيامةِ أحاسنَكُم أخلاقًا)',
            ),
          ],
        ),
      ),
    );
  }
}
