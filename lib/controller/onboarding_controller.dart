
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../resources/routes/route_name.dart';

class OnboardingController extends GetxController{
  OnboardingController();

  final _currentIndex = 0.obs;
  get currentIndex => _currentIndex.value;
  set currentIndex(value) => _currentIndex.value = value;
   PageController? pageController;

  /// ONBOARDING DOT METHOD
  changeIndex(int value){
   currentIndex = value;
  }

  /// JUMP LAST PAGE METHOD
  changePage(int value){
    pageController?.animateToPage(value, duration:const Duration(milliseconds:500), curve:Curves.easeIn);
  }

  ///SKIP PAGE METHOD
  onContinueOrSkipPressed(){
    Get.offNamed(RouteName.authentication);
  }


}