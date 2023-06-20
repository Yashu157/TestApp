import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/app/modules/splash_screen_module/splash_screen_controller.dart';

class splash_screenPage extends GetView<SplashScreenController> {
  final SplashScreenController splashScreenController = Get.find<SplashScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset("assets/fclogos.png"),
        ),
      ),
    );
  }
}
