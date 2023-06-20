import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class home_pageController extends GetxController{

  late PageController pageController;
  late Timer _timer;
  final int animationDuration = 1000; // Adjust the animation duration (in milliseconds)
  late double? imageWidth; // Adjust the width of the images
  final double imageHeight = 20.0; // Adjust the height of the images
  final List<String> imageUrls = [
    'https://cdn.fcglcdn.com/brainbees/banners/brandstrip1208-3-new-19-08-19.jpg',
    'https://cdn.fcglcdn.com/brainbees/banners/brandstrip1208-3-new-19-08-19.jpg',
    'https://cdn.fcglcdn.com/brainbees/banners/brandstrip1208-3-new-19-08-19.jpg',
    // Add more image URLs as needed
  ];

  final List<String>  RowimageUrls = [
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/405_538_casual_shoes_160222_01.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/405_538_smart_watches_160222_02.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/405_538_sunglasses_160522_03.jpg',
    // Add more image URLs as needed
  ];

  int _currentIndex = 0;

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController(initialPage: _currentIndex);
    _startAnimation();
    super.onInit();
  }


  void _startAnimation() {
    _timer = Timer.periodic(Duration(milliseconds: animationDuration), (timer) {

        _currentIndex = (_currentIndex + 1) % imageUrls.length;
        pageController.animateToPage(
          _currentIndex,
          duration: Duration(milliseconds: 2000),
          curve: Curves.easeInOut,
        );

    });
    update();
  }
@override
  void onClose() {
  _timer.cancel();
  pageController.dispose();
    // TODO: implement onClose
    super.onClose();
  }


  final List<String> sliderImages = [
    'https://cdn.fcglcdn.com/brainbees/banners/hp_mktg_p12_super_saver_deal_june_desktop1685967153799.jpg',
    'https://cdn.fcglcdn.com/brainbees/banners/hp_mktg_p01_flat40_super_summer_desktop1685611425397.jpg',
    'https://cdn.fcglcdn.com/brainbees/banners/summer_babyhug_mega_combofest_ext_10_off_hp1684907731467.jpg',
    'https://cdn.fcglcdn.com/brainbees/banners/hp_mktg_p04_wow_deal_super_summer_desktop1685523206866.jpg',
  ];

  final List<String> rowSlider = [
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_feeding_&_kids_food_210323_01.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate//summer02_desktop_090523_01.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer02_desktop_gear_&_activity_090523_18.jpg',
  ];

  final List<String> productSlider = [
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
    'https://cdn.fcglcdn.com/brainbees/images/cattemplate/summer_desktop_health_&_safty_210323_10.jpg',
  ];

}
