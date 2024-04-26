import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/signup_controller.dart';

class SignupPage extends GetView<SignupController> {

  Widget build(BuildContext context){
    return Scaffold(
    appBar:AppBar(title:Text("SignupPage"))
    );
  }
}