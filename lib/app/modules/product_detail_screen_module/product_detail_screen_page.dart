import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:testapp/app/modules/product_detail_screen_module/product_detail_screen_controller.dart';
import 'package:ticket_widget/ticket_widget.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ProductDetailScreenPage extends GetView<ProductDetailScreenController> {

  final ProductDetailScreenController registerPageController = Get.put<ProductDetailScreenController>(ProductDetailScreenController());


  final String? imageUrl;
  final String? productName;
  ProductDetailScreenPage({
    this.imageUrl,
    this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, // Set the desired color here
        ),
        automaticallyImplyLeading: true,
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
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: registerPageController.sliderImages.map((imageUrl) {
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
              Padding(
                padding: EdgeInsets.all(3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 9.h,
                      height: 7.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.amber[800], // Dark yellow color
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0.4),
                          child: Text(
                            'Best Seller',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Baby hug Diaper start print - blue ",
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      " ₹ 1000.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      children: [
                        Text(
                          "MRP: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 9.sp,
                            color: Colors.grey,
                            // decoration: TextDecoration.lineThrough,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "2000 ",
                          style: TextStyle(
                            fontSize: 9.sp,
                            decoration: TextDecoration.lineThrough,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " 50% OFF",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 9.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Icon(Icons.favorite_border)
                      ],
                    ),
                    Text(
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 7.sp,
                        ),
                        " MRP incl. all taxes Add'l charges may apply on discounted price ")
                  ],
                ),
              ),
              Divider(thickness: 0.50.h),
              Container(
                padding: EdgeInsets.all(1.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OFFER AND DISCOUNTS",
                      style: TextStyle(
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      height: 10.h,
                      width: 100.w,
                      child: CarouselSlider(
                        items: [
                          Center(
                            child: Container(
                              child: TicketWidget(
                                width: 70.w, // Adjust the width as desired
                                height: 14.h,
                                isCornerRounded: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.lightBlue.shade100,
                                        Colors.pink.shade100
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.w),
                                          child: Text(
                                            "Flat 20% off for all user",
                                            style: TextStyle(
                                              fontSize: 13.sp,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        DottedLine(),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.w),
                                          child: SizedBox(
                                            width: 30.w,
                                            height: 4.h,
                                            child: DottedBorder(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      color: Colors.blueAccent,
                                                      width: 30.w,
                                                      height: 4.h,
                                                      child: Center(
                                                          child: Text(
                                                            "SMRFB",
                                                            style: TextStyle(
                                                                color: Colors.white),
                                                          )),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: 30.w,
                                                      height: 4.h,
                                                      color: Colors.white,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Icon(
                                                            Icons.copy,
                                                            size: 3.h,
                                                          ),
                                                          Text("copy",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .lightBlueAccent)),
                                                        ],
                                                      ),
                                                      //  height: 4.h,
                                                      //   width: 1.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Add more items as needed
                        ],
                        options: CarouselOptions(
                          // Set carousel options here
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "SIZE",
                      style: TextStyle(
                        fontSize: 11.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 50.w,
                      height: 10.h,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(registerPageController.sizes.length, (index) {
                          final size = registerPageController.sizes[index];
                          return Padding(
                            padding:  EdgeInsets.only(right: 2.w),
                            child: Container(
                              width: 8.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.orange,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  size,
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.black),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Divider(thickness: 0.50.h),
                    Text(
                      "Product Information".toUpperCase(),
                      style: TextStyle(
                        fontSize: 11.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 1.h,),
                    Text(
                      "Specification".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),  Text(
                      "Brand - PUMA".toUpperCase(),
                      style: TextStyle(
                        fontSize: 8.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),  Text(
                      "Type: T-shirt".toUpperCase(),
                      style: TextStyle(
                        fontSize: 8.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),  Text(
                      "Fabric - cotton".toUpperCase(),
                      style: TextStyle(
                        fontSize: 8.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),Text(
                      "Neck - Round Neck".toUpperCase(),
                      style: TextStyle(
                        fontSize: 8.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 1.h,),
                    Text(
                      "Read More",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 8.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                width: double.infinity,
                // margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Perform add to cart functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
