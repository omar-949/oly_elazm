part of 'user_info_cubit.dart';

@immutable
abstract class UserInfoState {}

class UserInfoInitial extends UserInfoState {}

class UserInfoUpdated extends UserInfoState {
  final bool? isStudent;
  final bool? isMale;
  final double percent;
  final int currentIndex;

  UserInfoUpdated({
    this.isStudent,
    this.isMale,
    required this.percent,
    this.currentIndex = 0,
  });

  UserInfoUpdated copyWith({
    bool? isStudent,
    bool? isMale,
    double? percent,
    int? currentIndex,
  }) {
    return UserInfoUpdated(
      isStudent: isStudent ?? this.isStudent,
      isMale: isMale ?? this.isMale,
      percent: percent ?? this.percent,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
