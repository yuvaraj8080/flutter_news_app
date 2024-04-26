import 'package:flutter_news_app/views/login_page.dart';
import 'package:get/get.dart';

import '../resources/routes/route_name.dart';

class AuthenticationController extends GetxController{
  AuthenticationController();

  navigateToLogin(){
    Get.toNamed(RouteName.login);
  }

}