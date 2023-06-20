
import 'package:testapp/app/modules/signup_page_module/signup_page_bindings.dart';
import 'package:testapp/app/modules/signup_page_module/signup_page_page.dart';

import '../../app/modules/home_page_module/home_page_page.dart';
import '../../app/modules/home_page_module/home_page_bindings.dart';
import '../../app/modules/splash_screen_module/splash_screen_page.dart';
import '../../app/modules/splash_screen_module/splash_screen_bindings.dart';
import '../../app/modules/loginpage_module/loginpage_page.dart';
import '../../app/modules/loginpage_module/loginpage_bindings.dart';
import 'package:get/get.dart';

import '../modules/product_detail_screen_module/product_detail_screen_bindings.dart';
import '../modules/product_detail_screen_module/product_detail_screen_page.dart';
import '../product_file.dart';
part './app_routes.dart';

/**
 * GetX Generator - fb.com/htngu.99
 * */

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGINPAGE,
      page: () => loginpagePage(),
      binding: loginpageBinding(),
    ),
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => splash_screenPage(),
      binding: splash_screenBinding(),
    ),
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => HomePage(),
      binding: home_pageBinding(),
    ),

    GetPage(
      name: Routes.SIGNUP_PAGE,
      page: () => signup_pagePage(),
      binding: signup_pageBinding(),
    ),    GetPage(
      name: Routes.PRODUCT_PAGE,
      page: () => ProductDetailScreenPage(),
      binding: ProductDetailScreenBinding(),
    ),
  ];
}
