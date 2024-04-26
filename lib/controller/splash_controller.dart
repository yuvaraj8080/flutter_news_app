import 'package:get/get.dart';

import '../resources/routes/route_name.dart';

class SplashController extends GetxController{
  SplashController();

  @override
  void onInit(){
    super.onInit();
    navigateScreen();
  }

  /// NAVIGATE TO ONBOARDING SCREEN
  navigateScreen(){
    Future.delayed(const Duration(seconds:3),(){
      Get.offNamed(RouteName.onboarding);
    });
  }

}