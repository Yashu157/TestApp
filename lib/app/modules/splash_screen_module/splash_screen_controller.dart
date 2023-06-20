import 'dart:async';
import 'package:get/get.dart';
import '../sharedpref.dart';
import '../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkLoggedIn();
  }

  Future<void> checkLoggedIn() async {
    final isLoggedIn = await PreferenceManager.isLoggedIn();
    Timer(const Duration(seconds: 3), () {

      if (isLoggedIn) {
        Get.offNamed(Routes.HOME_PAGE);
      } else {
        Get.offNamed(Routes.LOGINPAGE);
      }
    });
  }
}
