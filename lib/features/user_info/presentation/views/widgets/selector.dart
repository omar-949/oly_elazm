import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/features/user_info/data/model/selector_model.dart';
import 'package:oly_elazm/features/user_info/presentation/manager/user_info_cubit.dart';
import 'package:oly_elazm/features/user_info/presentation/views/widgets/user_info_item.dart';

class Selector extends StatelessWidget {
  final SelectionOption optionModel;
  final Function(bool) onSelectionChanged;

  const Selector({
    super.key,
    required this.optionModel,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          optionModel.title,
          style: AppTextStyle.font18SemiBold(color: Colors.black),
        ),
        20.verticalSpace,
        GestureDetector(
          onTap: () {
            onSelectionChanged(true);
            if (optionModel.type == SelectionType.gender) {
              context.read<UserInfoCubit>().updateGender(true);
            } else if (optionModel.type == SelectionType.role) {
              context.read<UserInfoCubit>().updateRole(true);
            }
          },
          child: UserInfoItem(
            image: optionModel.image1,
            info: optionModel.option1,
            isSelected: context.select((UserInfoCubit cubit) {
              if (optionModel.type == SelectionType.gender) {
                return cubit.state is UserInfoUpdated && (cubit.state as UserInfoUpdated).isMale == true;
              } else if (optionModel.type == SelectionType.role) {
                return cubit.state is UserInfoUpdated && (cubit.state as UserInfoUpdated).isStudent == true;
              }
              return false;
            }),
          ),
        ),
        64.verticalSpace,
        GestureDetector(
          onTap: () {
            onSelectionChanged(false);
            if (optionModel.type == SelectionType.gender) {
              context.read<UserInfoCubit>().updateGender(false);
            } else if (optionModel.type == SelectionType.role) {
              context.read<UserInfoCubit>().updateRole(false);
            }
          },
          child: UserInfoItem(
            image: optionModel.image2,
            info: optionModel.option2,
            isSelected: context.select((UserInfoCubit cubit) {
              if (optionModel.type == SelectionType.gender) {
                return cubit.state is UserInfoUpdated && (cubit.state as UserInfoUpdated).isMale == false;
              } else if (optionModel.type == SelectionType.role) {
                return cubit.state is UserInfoUpdated && (cubit.state as UserInfoUpdated).isStudent == false;
              }
              return false;
            }),
          ),
        ),
      ],
    );
  }
}