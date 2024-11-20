import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(UserInfoUpdated(isStudent: null, isMale: null, percent: 0.0, currentIndex: 0));

  // Update role (Student or not)
  void updateRole(bool value) {
    final currentState = state;
    if (currentState is UserInfoUpdated) {
      final updatedPercent = percentCalculator(value, currentState.isMale);
      emit(currentState.copyWith(isStudent: value, percent: updatedPercent));
    }
  }

  // Update gender (Male or Female)
  void updateGender(bool value) {
    final currentState = state;
    if (currentState is UserInfoUpdated) {
      final updatedPercent = percentCalculator(currentState.isStudent, value);
      emit(currentState.copyWith(isMale: value, percent: updatedPercent));
    }
  }

  // Calculate percent based on role (student) and gender (male)
  double percentCalculator(bool? isStudent, bool? isMale) {
    if (isStudent == null) return 0.0;  // Initial state when isStudent is null
    if (isMale == null) return isStudent ? 1 / 3 : 1 / 2;  // Only role selected, gender is still null
    return isStudent ? 2 / 3 : 1.0;  // Both role and gender are selected
  }

  // Update the current index of the PageView
  void updateCurrentIndex(int index) {
    if (state is UserInfoUpdated) {
      emit((state as UserInfoUpdated).copyWith(currentIndex: index));
    }
  }
}
