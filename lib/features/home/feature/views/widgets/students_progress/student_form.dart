import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/widgets/app_form_item.dart';
import 'package:oly_elazm/core/widgets/custom_app_button.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({super.key});

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController commentController;
  late final TextEditingController newLessonController;
  late final TextEditingController linkController;

  @override
  void initState() {
    commentController = TextEditingController();
    newLessonController = TextEditingController();
    linkController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    commentController.dispose();
    newLessonController.dispose();
    linkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            AppFormItem(
              title: 'اضافة تعليق',
              hint: 'اكتب تعليقك هنا',
              controller: commentController,
            ),
            16.verticalSpace,
            AppFormItem(
              title: 'اضافة حفظ جديد',
              hint: 'اكتب الحفظ  هنا',
              controller: newLessonController,
            ),
            16.verticalSpace,
            AppFormItem(
              title: 'اضافة رابط تسميع',
              hint: 'اضف الرابط هنا',
              controller: linkController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 32.h),
              child: CustomAppButton(
                onTap: () {},
                title: 'ارسال',
              ),
            )
          ],
        ),
      ),
    );
  }
}
