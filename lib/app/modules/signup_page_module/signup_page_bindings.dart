import 'package:testapp/app/modules/signup_page_module/signup_page_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class signup_pageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => signup_pageController());
  }
}