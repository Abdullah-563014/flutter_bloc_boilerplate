import 'package:equatable/equatable.dart';





class MainState extends Equatable {
  final DateTime userBirthDate;
  final DateTime targetDate;
  final String userAge;
  final int totalYears;
  final int totalMonths;
  final int totalWeeks;
  final int totalDays;
  final int totalHours;
  final int totalMinutes;
  final int totalSeconds;
  final int totalMilliseconds;

  const MainState({
    required this.userBirthDate,
    required this.targetDate,
    this.userAge = "",
    this.totalYears = 0,
    this.totalMonths = 0,
    this.totalWeeks = 0,
    this.totalDays = 0,
    this.totalHours = 0,
    this.totalMinutes = 0,
    this.totalSeconds = 0,
    this.totalMilliseconds = 0
  });


  MainState copyWith({
    DateTime? userBirthDate,
    DateTime? targetDate,
    String? userAge,
    int? totalYears,
    int? totalMonths,
    int? totalWeeks,
    int? totalDays,
    int? totalHours,
    int? totalMinutes,
    int? totalSeconds,
    int? totalMilliseconds,
  }) {
    return MainState(
      userBirthDate: userBirthDate ?? this.userBirthDate,
      targetDate: targetDate ?? this.targetDate,
      userAge: userAge ?? this.userAge,
      totalYears: totalYears ?? this.totalYears,
      totalMonths: totalMonths ?? this.totalMonths,
      totalWeeks: totalWeeks ?? this.totalWeeks,
      totalDays: totalDays ?? this.totalDays,
      totalHours: totalHours ?? this.totalHours,
      totalMinutes: totalMinutes ?? this.totalMinutes,
      totalSeconds: totalSeconds ?? this.totalSeconds,
      totalMilliseconds: totalMilliseconds ?? this.totalMilliseconds,
    );
  }





  @override
  List<Object?> get props => [
    userBirthDate,
    targetDate,
    userAge,
    totalYears,
    totalMonths,
    totalWeeks,
    totalDays,
    totalHours,
    totalMinutes,
    totalSeconds,
    totalMilliseconds
  ];


}