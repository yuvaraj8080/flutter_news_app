import 'package:flutter/material.dart';
import 'package:flutter_news_app/resources/constants/consts.dart';
import 'package:flutter_news_app/resources/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: AppColors.icon),
              color: Colors.transparent,
              elevation: 0.0),
          fontFamily: AppFonts.regular,
          scaffoldBackgroundColor: AppColors.background,
          iconTheme: const IconThemeData(
            color: AppColors.icon,
          )),
      getPages: AppRoute.getRoutes(),
    );
  }
}
