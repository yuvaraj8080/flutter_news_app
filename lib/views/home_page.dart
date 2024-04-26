import 'package:flutter/material.dart';
import 'package:flutter_news_app/controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController>{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Home Page"))
    );
  }
}