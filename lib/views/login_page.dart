import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/resources/constants/style.dart';
import 'package:flutter_news_app/views/widgets/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/login_controller.dart';
import '../resources/constants/consts.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          OutlinedButton(
              onPressed: ()=> controller.navigateToHome(),
              child:
                  Text(AppStrings.continueAsGuest, style: AppStyle.semibold()))
        ]),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            /// TITLE SECTION
            40.heightBox,
            Text(AppStrings.login, style: AppStyle.bold(size: 25)),
            Text(AppStrings.follSimple,
                style: AppStyle.semibold(
                    size: 12, color: AppColors.secondaryText)),

            ///CUSTOM EMAIL TEXT FIELD
            80.heightBox,
            const CustomTextField(
                hint: AppStrings.emailHint, label: AppStrings.email),

            /// CUSTOM PASSWORD TEXT FIELD
            const CustomTextField(
                hint: AppStrings.passwordHint,
                label: AppStrings.password,
                isPassword: true),

            ///BUTTONS SECTION
            40.heightBox,
            SizedBox(
                width: context.screenWidth,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryButton),
                    onPressed: () {},
                    child: Text(AppStrings.login,
                        style: AppStyle.bold(size: 15, color: Colors.white)))),

            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.donHaveAccount,
                    style: AppStyle.regular(color: AppColors.secondaryText)),
                TextButton(
                    onPressed: () => controller.navigateToSignup(),
                    child: Text(AppStrings.signup, style: AppStyle.semibold()))
              ],
            )
          ]),
        ));
  }
}
