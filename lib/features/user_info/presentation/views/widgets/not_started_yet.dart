import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';

class NotStartedCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const NotStartedCheckbox({
    super.key,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<NotStartedCheckbox> createState() => _NotStartedCheckboxState();
}

class _NotStartedCheckboxState extends State<NotStartedCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
            widget.onChanged(isChecked);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          side: const BorderSide(
            color: Color(0xff777777),
          ),
          activeColor: AppColors.mainAppColor,
          splashRadius: 0,
        ),
        Text(
          'لم تبدأ الحفظ بعد؟',
          style: AppTextStyle.font16Regular(color: const Color(0xff5F5F5F)),
        ),
      ],
    );
  }
}
