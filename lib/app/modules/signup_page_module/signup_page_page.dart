import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:testapp/app/modules/signup_page_module/signup_page_controller.dart';

import '../../routes/app_pages.dart';

class signup_pagePage extends GetView<signup_pageController> {

  final signup_pageController registerPageController = Get.put<signup_pageController>(signup_pageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, // Set the desired color here
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          // Set the desired color here
          automaticallyImplyLeading: true,

        ),
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding:  EdgeInsets.all(3.h),
          child: SingleChildScrollView(
            child: Form(
              key: registerPageController.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset("assets/fclogos.png")),
                  SizedBox(height: 5.h),
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(
                    controller: registerPageController.fullNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h),

                  Text(
                    'Email ID',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(
                    controller: registerPageController.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email ID';
                      }
                      if (!registerPageController.isValidEmail(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email ID',
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(

                    controller: registerPageController.passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (!registerPageController.isValidPassword(value)) {
                        return 'Password must be at least 8 characters long with 1 uppercase, 1 lowercase, and 1 numeric character';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      errorMaxLines: 2,
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orange),
                      ),
                      onPressed: ()  {
                        // Perform registration logic here
                        registerPageController.submitForm(context);
                      },
                      child: Text('CONTINUE'),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  InkWell(
                    onTap: () {
                      Get.offNamed(Routes.LOGINPAGE);

                    },
                    child: Text(
                      'Already have account? try to Login ',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



}
