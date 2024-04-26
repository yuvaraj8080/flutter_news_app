import 'package:flutter_news_app/controller/authentication_controlller.dart';
import 'package:flutter_news_app/controller/login_controller.dart';
import 'package:flutter_news_app/controller/onboarding_controller.dart';
import 'package:flutter_news_app/controller/signup_controller.dart';
import 'package:flutter_news_app/controller/splash_controller.dart';
import 'package:flutter_news_app/views/authentication_page.dart';
import 'package:flutter_news_app/views/login_page.dart';
import 'package:flutter_news_app/views/onboarding_page.dart';
import 'package:flutter_news_app/views/splash_page.dart';
import 'package:get/get.dart';

import '../../views/signup_page.dart';
import 'route_name.dart';

class AppRoute {
  static getRoutes()=> [
    GetPage(
        name: RouteName.splash,
        page: () => const SplashPage(),
        binding: BindingsBuilder.put(() => SplashController()),
    ),

    GetPage(
      name: RouteName.onboarding,
      page: () =>  const OnboardingPage(),
      binding: BindingsBuilder.put(() => OnboardingController()),
    ),

    GetPage(name:RouteName.authentication,
      page:()=> const AuthenticationPage(),
      binding:BindingsBuilder.put(() => AuthenticationController())
    ),

    GetPage(name:RouteName.login,
        page:()=> const LoginPage(),
        binding:BindingsBuilder.put(() => LoginController())
    ),

    GetPage(name:RouteName.signup,
        page:()=> SignupPage(),
      binding: BindingsBuilder.put(() => SignupController())
    )

  ];
}
