import 'package:age_calculator/pages/auth/auth_state.dart';
import 'package:age_calculator/pages/main/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';




class MainCubit extends Cubit<MainState> {

  MainCubit(): super(MainState(userBirthDate: DateTime(2000), targetDate: DateTime(2023)));


  void setBirthDate(birthDate) => emit(state.copyWith(userBirthDate: birthDate));
  void setTargetDate(targetDate) => emit(state.copyWith(targetDate: targetDate));

  void updateUserAge() {
    String userAge = "Years: ${state.totalYears}, Months: ${state.totalMonths}, Days: ${state.totalDays}";
    emit(state.copyWith(userAge: userAge));
  }







}