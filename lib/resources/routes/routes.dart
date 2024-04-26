import 'package:flutter_news_app/controller/authentication_controlller.dart';
import 'package:flutter_news_app/controller/onboarding_controller.dart';
import 'package:flutter_news_app/controller/splash_controller.dart';
import 'package:flutter_news_app/views/authentication_page.dart';
import 'package:flutter_news_app/views/onboarding_page.dart';
import 'package:flutter_news_app/views/splash_page.dart';
import 'package:get/get.dart';

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
      page: () =>  OnboardingPage(),
      binding: BindingsBuilder.put(() => OnboardingController()),
    ),

    GetPage(name:RouteName.authentication,
      page:()=> AuthenticationPage(),
      binding:BindingsBuilder.put(() => AuthenticationController())
    )
  ];
}
