import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/authentication_controlller.dart';
import '../resources/constants/consts.dart';


class AuthenticationPage extends GetView<AuthenticationController>{
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        alignment:Alignment.center,
        padding:const EdgeInsets.all(20.0),
        child:Column(children:[

          /// APP LOGO, TITLE, SUBTITLE
          const Spacer(),
          Image.asset(AppAssets.logo,width:180),
          10.heightBox,
          Text(AppStrings.welcome,style:AppStyle.semibold(size:18)),
          10.heightBox,
          Text(AppStrings.signInToContinue,style:AppStyle.regular()),
          const Spacer(),

          /// SOCIAL BUTTONS
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
              children:[
            IconButton(onPressed:(){}, icon:const CircleAvatar(backgroundImage:AssetImage("assets/icons/google.png",),radius:35)),
            IconButton(onPressed:(){}, icon:const CircleAvatar(backgroundImage:AssetImage("assets/icons/facebook.png",),radius:35)),
          ]),

          /// EMAIL LOGIN, PRIVACY POLICY
          30.heightBox,
          TextButton(onPressed:()=> controller.navigateToLogin(), child:const Text(AppStrings.continueWithEmail)),
          50.heightBox,
          Text(AppStrings.privacyPolicyTermCondition,style:AppStyle.regular(color:AppColors.secondaryText,size:12)),

        ])
      )
    );
  }
}