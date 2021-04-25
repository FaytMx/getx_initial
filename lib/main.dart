import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_patter_demo/app/modules/splash/splash_binding.dart';
import 'package:getx_patter_demo/app/modules/splash/splash_page.dart';
import 'package:getx_patter_demo/app/routes/app.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPage.pages,
    );
  }
}
