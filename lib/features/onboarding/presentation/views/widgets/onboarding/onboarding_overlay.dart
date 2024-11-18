import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/features/onboarding/data/models/onboarding_item.dart';
import 'package:oly_elazm/features/onboarding/presentation/views/widgets/onboarding/onboarding_action_button.dart';

class OnboardingOverlay extends StatelessWidget {
  final int currentPage;
  final List<OnboardingItem> items;
  final VoidCallback onSkip;
  final VoidCallback onContinue;

  const OnboardingOverlay({
    super.key,
    required this.currentPage,
    required this.items,
    required this.onSkip,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    final item = items[currentPage];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          20.verticalSpace,
          Text(
            item.title,
            textDirection: TextDirection.rtl,
            style: AppTextStyle.font32SemiBold(),
          ),
          16.verticalSpace,
          Text(
            item.description,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: AppTextStyle.font24Regular(),
          ),
          30.verticalSpace,
          OnboardingActionButtons(
            onSkip: onSkip,
            onContinue: onContinue,
          ),
        ],
      ),
    );
  }
}
