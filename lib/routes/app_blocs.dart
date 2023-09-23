import 'package:age_calculator/pages/auth/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class AppBlocs {


  static BlocProvider<AuthCubit> authBloc = BlocProvider(create: (_) => AuthCubit());


}