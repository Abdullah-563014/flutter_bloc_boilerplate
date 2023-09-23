import 'package:age_calculator/models/page_entity.dart';
import 'package:age_calculator/pages/auth/auth_cubit.dart';
import 'package:age_calculator/pages/auth/forgot_password_page.dart';
import 'package:age_calculator/pages/auth/login_page.dart';
import 'package:age_calculator/pages/auth/registration_page.dart';
import 'package:age_calculator/routes/app_blocs.dart';
import 'package:age_calculator/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';







class AppPages {

  static final RouteObserver routeObserver = RouteObserver();

  static List<String> history = [];

  static List<PageEntity> Routes() {
    return [
      PageEntity(
        path: AppRoutes.login,
        page: const LoginPage(),
        bloc: AppBlocs.authBloc
      ),
    ];
  }

  static List<dynamic> Blocer(BuildContext buildContext) {
    List<dynamic> blocerList = <dynamic>[];
    for (var blocer in Routes()) {
      blocerList.add(blocer);
    }

    return blocerList;
  }

  static MaterialPageRoute GenerateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = Routes().where((element) => element.path == settings.name);
      if (result.isNotEmpty) {
        return MaterialPageRoute<void>(builder: (_) => result.first.page, settings: settings);
      }
    }

    return MaterialPageRoute<void>(builder: (_) => const LoginPage(), settings: settings);
  }


}