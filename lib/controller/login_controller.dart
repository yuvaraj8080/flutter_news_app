import 'package:flutter_news_app/resources/routes/route_name.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  LoginController();

  /// NAVIGATE TO SIGNUP PAGE
  navigateToSignup(){
    Get.toNamed(RouteName.signup);
  }

  /// NAVIGATE TO HOME PAGE
  navigateToHome(){
    Get.toNamed(RouteName.home);
  }

}