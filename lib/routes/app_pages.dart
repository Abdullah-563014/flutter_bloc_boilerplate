import 'package:age_calculator/models/page_entity.dart';
import 'package:age_calculator/pages/auth/ui/forgot_password_page.dart';
import 'package:age_calculator/pages/auth/ui/login_page.dart';
import 'package:age_calculator/pages/auth/ui/registration_page.dart';
import 'package:age_calculator/pages/main/main_page.dart';
import 'package:age_calculator/routes/app_blocs.dart';
import 'package:age_calculator/routes/app_routes.dart';
import 'package:age_calculator/utils/commons.dart';
import 'package:flutter/material.dart';




class AppPages {

  static List<PageEntity> getRoutesList() {
    return [
      PageEntity(
        path: AppRoutes.login,
        page: const LoginPage(),
        blocs: [AppBlocs.authBloc]
      ),
      PageEntity(
          path: AppRoutes.registration,
          page: const RegistrationPage(),
          blocs: [AppBlocs.authBloc]
      ),
      PageEntity(
          path: AppRoutes.forgotPasswordPage,
          page: const ForgotPasswordPage(),
          blocs: [AppBlocs.authBloc]
      ),
      PageEntity(
          path: AppRoutes.main,
          page: const MainPage(),
          blocs: [AppBlocs.mainBloc]
      ),
    ];
  }










  static final RouteObserver routeObserver = RouteObserver();

  static List<String> history = [];

  static List<dynamic> getBlocsList(BuildContext buildContext) {
    List<dynamic> blocsList = <dynamic>[];
    for (var route in getRoutesList()) {
      for (var singleBloc in route.blocs) {
        if (!blocsList.contains(singleBloc)) {
          blocsList.add(singleBloc);
        }
      }
    }

    return blocsList;
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = getRoutesList().where((element) => element.path == settings.name);
      if (result.isNotEmpty) {
        return MaterialPageRoute<void>(builder: (_) => result.first.page, settings: settings);
      }

      return MaterialPageRoute<void>(builder: (_) => const MainPage(), settings: settings);
    }

    return MaterialPageRoute<void>(builder: (_) => const MainPage(), settings: settings);
  }

}