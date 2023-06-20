import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sizer/sizer.dart';

import '../../product_file.dart';
import '../../routes/app_pages.dart';
import '../imageloop.dart';
import 'home_page_controller.dart';

class HomePage extends GetView<home_pageController> {
  final home_pageController homepageController = Get.put<home_pageController>(home_pageController());
  @override
  Widget build(BuildContext context) {
    homepageController.imageWidth = MediaQuery.of(context).size.width * 0.20;
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/fclogos.png',
              height: 30,
            ),
            SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Shop for',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  'All',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                // Perform search functionality here
              },
              child: Icon(
                Icons.search,
                color: Colors.grey,
                size: 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                // Perform notification functionality here
              },
              child: Icon(
                Icons.notifications_none,
                color: Colors.grey,
                size: 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                // Perform favorite functionality here
              },
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                // Navigate to the shopping cart page
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Slider
            Container(
              color: Colors.grey.shade300,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                    size: 12,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Deliver to 133104',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9.sp,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: homepageController.sliderImages.map((imageUrl) {
                return Image.network(
                  imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1.0,
                autoPlay: true,
                enlargeCenterPage: false,
              ),
            ),
            SizedBox(height: 3.h),
            CarouselSlider(
              items: homepageController.rowSlider.map((imageUrl) {
                return Image.network(
                  imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              }).toList(),
              options: CarouselOptions(

                height: 7.h,
                viewportFraction: 1.0,
                autoPlay: true,
                enlargeCenterPage: false,
              ),
            ),
            // Section 1: Featured Products
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Shop by Category',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: Wrap(
                      spacing: 10.0,
                      runSpacing: 10.0,
                      children: List.generate(homepageController.productSlider.length, (index) {
                        if (index % 2 == 0) {
                          final screenWidth = MediaQuery.of(context).size.width * 0.90;
                          final imageWidth = (screenWidth - 30.0) / 2; // Subtract the total spacing from the width

                          return Row(
                            children: [
                              InkWell(
                                  onTap: (){
                                    Get.toNamed(Routes.PRODUCT_PAGE);
                                  },
                                child: Container(
                                  width: imageWidth,
                                  height: imageWidth,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      homepageController.productSlider[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: (){
                                  Get.toNamed(Routes.PRODUCT_PAGE);
                                },
                                child: Container(
                                  width: imageWidth,
                                  height: imageWidth,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      homepageController.productSlider[index + 1],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else {
                          return SizedBox.shrink();
                        }
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),

            Text(
              'Bring the spring',
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
            SizedBox(height: 1.h),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.PRODUCT_PAGE);
                    },
                    child: Container(
                      width: 45.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://cdn.fcglcdn.com/brainbees/images/cattemplate/615_384_spring22_her_160222_01.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
               //   Spacer(),
                  Container(
                    width: 45.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://cdn.fcglcdn.com/brainbees/images/cattemplate/615_384_spring22_him_160222_02.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Text(
              'Trend Add Ons',
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
            SizedBox(height: 1.h),
        Row(
          children: [
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 150.0,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                ),
                items: homepageController.RowimageUrls.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: (){
                          Get.toNamed(Routes.PRODUCT_PAGE);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),

        SizedBox(height: 1.h,),

        SizedBox(
          height: homepageController.imageHeight,
          child: PageView.builder(
            controller: homepageController.pageController,
            itemCount: homepageController.imageUrls.length,
            itemBuilder: (context, index) {
              final imageUrl = homepageController.imageUrls[index];
              return Container(
                width: homepageController.imageWidth,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),

        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}


