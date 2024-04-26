import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';
import '../resources/constants/assets.dart';
import '../resources/constants/string.dart';
import '../resources/constants/style.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      const Spacer(),
      Image.asset(AppAssets.logo, width: 180),
      const Spacer(),
      Text(AppStrings.poweredBy, style: AppStyle.regular(size: 12))
    ])));
  }
}
