import 'package:flutter_news_app/resources/routes/route_name.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  LoginController();

  navigateToSignup(){
    Get.toNamed(RouteName.signup);
  }

}