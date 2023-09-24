import 'package:age_calculator/pages/auth/auth_cubit.dart';
import 'package:age_calculator/pages/main/main_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class AppBlocs {


  static BlocProvider<AuthCubit> authBloc = BlocProvider(create: (_) => AuthCubit());
  static BlocProvider<MainCubit> mainBloc = BlocProvider(create: (_) => MainCubit());


}