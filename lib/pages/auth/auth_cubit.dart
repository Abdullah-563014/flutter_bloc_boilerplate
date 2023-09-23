import 'package:age_calculator/pages/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';




class AuthCubit extends Cubit<AuthState> with HydratedMixin {

  AuthCubit(): super(AuthState(isAuthenticated: false));


  void setIsAuthenticated() => emit(AuthState(isAuthenticated: true));




  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toMap();
  }



}