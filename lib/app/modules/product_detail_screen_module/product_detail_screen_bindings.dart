import 'package:get/get.dart';
import 'package:testapp/app/modules/product_detail_screen_module/product_detail_screen_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ProductDetailScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailScreenController());
  }
}