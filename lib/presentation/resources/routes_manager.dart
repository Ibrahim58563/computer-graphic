import 'package:computer_graphic/presentation/resources/strings_manager.dart';
import 'package:computer_graphic/ui.dart';
import 'package:flutter/material.dart';

import '../forgot_password/forgot_password.dart';
import '../login/login_view.dart';
import '../main/main_view.dart';
import '../splash/splash_view.dart';
import '../store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/splash"; // this slash for the main route
  static const String homeRoute = "/home";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) =>  Home());
      // case Routes.loginRoute:
      //   return MaterialPageRoute(builder: (_) => const LoginView());
      // case Routes.registerRoute:
      //   return MaterialPageRoute(builder: (_) => const RegisterView());
      // case Routes.forgotPasswordRoute:
      //   return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      // case Routes.mainRoute:
      //   return MaterialPageRoute(builder: (_) => const MainView());
      // case Routes.storeDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                  title: const Text(AppStrings
                      .noRouteFound)), // TODO: move this string to strings manager
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
