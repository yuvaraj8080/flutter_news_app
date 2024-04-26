import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/resources/constants/consts.dart';
import 'package:flutter_news_app/resources/constants/style.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/onboarding_controller.dart';
import '../resources/constants/assets.dart';
import '../resources/constants/string.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///  ONBOARDING TITLE & SUBTITLE HARE
    var titles = [
      AppStrings.onboardingTitle0,
      AppStrings.onboardingTitle1,
      AppStrings.onboardingTitle2
    ];
    var desc = [
      AppStrings.onboardingDesc0,
      AppStrings.onboardingDesc1,
      AppStrings.onboardingDesc2
    ];

    return Scaffold(
      body: PageView.builder(
          controller: controller.pageController,
          itemCount: 3,
          onPageChanged: (value) => controller.changeIndex(value),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Expanded(
                    flex: 2,
                    child: Image.asset("${AppAssets.onboarding}$index.png")),
                Expanded(
                    child: Container(
                        child: Column(children: [
                  Text(titles[index], style: AppStyle.semibold(size: 16)),
                  15.heightBox,
                  VxBox()
                      .size(250, 3)
                      .color(AppColors.primaryButton)
                      .rounded
                      .make(),
                  30.heightBox,
                  Text(desc[index],
                      style: AppStyle.regular(color: AppColors.secondaryText)),
                ])))
              ]),
            );
          }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          TextButton(
              onPressed: ()=> controller.onContinueOrSkipPressed(),
              child: Text(AppStrings.skip,
                  style: AppStyle.semibold(color: AppColors.secondaryText))),

          /// 3 DOT FOR ONBOARDING
          Obx(
            () => Row(
              children: List.generate(
                  3,
                  (index) => VxBox()
                      .size(index == controller.currentIndex ? 25 : 5, 5)
                      .rounded
                      .color(index == controller.currentIndex
                          ? AppColors.primaryButton
                          : AppColors.sliderDot)
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .make()),
            ),
          ),
          Obx(() => controller.currentIndex < 2
              ? IconButton(
                  onPressed: () =>
                      controller.changePage(controller.currentIndex),
                  icon: const Icon(Icons.arrow_forward_ios))
              : TextButton(
                  onPressed: ()=> controller.onContinueOrSkipPressed(),
                  child: Text("Continue",
                      style:
                          AppStyle.semibold(color: AppColors.secondaryButton))))
        ]),
      ),
    );
  }
}
