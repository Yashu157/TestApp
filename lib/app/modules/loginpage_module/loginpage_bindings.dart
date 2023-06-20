import 'package:testapp/app/modules/loginpage_module/loginpage_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class loginpageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => loginpageController());
  }
}