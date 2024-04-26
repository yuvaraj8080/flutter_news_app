import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/signup_controller.dart';
import '../resources/constants/consts.dart';
import 'widgets/custom_textfield.dart';

class SignupPage extends GetView<SignupController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                35.heightBox,

                /// TITLE SECTION
                Text(AppStrings.signup, style: AppStyle.bold(size: 25)),
                Text(AppStrings.follSimple, style: AppStyle.semibold(size:12,color:AppColors.secondaryText)),

                40.heightBox,

                /// CUSTOM NAME TEXT FIELD
                const CustomTextField(
                    hint: AppStrings.nameHint, label: AppStrings.name),

                ///CUSTOM EMAIL TEXT FIELD
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
                        style:ElevatedButton.styleFrom(backgroundColor:AppColors.primaryButton),
                        onPressed: () {},
                        child: Text(AppStrings.signup,style:AppStyle.bold(size:15,color:Colors.white)))),

                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.alreadyHaveAccount,style:AppStyle.regular(color:AppColors.secondaryText)),
                    TextButton(onPressed:()=> controller.navigateback(), child:Text(AppStrings.login,style:AppStyle.semibold()))
                  ],
                )
              ]),
        ));
  }
}