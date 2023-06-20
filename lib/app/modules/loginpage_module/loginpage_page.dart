import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:testapp/app/modules/loginpage_module/loginpage_controller.dart';

import '../../routes/app_pages.dart';
import '../sharedpref.dart';

class loginpagePage extends GetView<loginpageController> {
   loginpagePage({super.key});
  final loginpageController LoginpageController = Get.put<loginpageController>(loginpageController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.all(3.h),
          child: SingleChildScrollView(
            child: Form(
              key:LoginpageController.formKey, // Assign the form key
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset("assets/fclogos.png")),
                  SizedBox(height: 5.h),
                  Text(
                    'Login / Register',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'Email ID / Mobile No.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  TextFormField(
                    controller:LoginpageController. emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email ID';
                      }
                      if (!LoginpageController.isValidEmail(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email ID',
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(
                    controller: LoginpageController.passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      // You can add additional validation logic here
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
                        backgroundColor:
                        MaterialStateProperty.all(Colors.orange),
                      ),
                      onPressed: () async{
                        LoginpageController.onFormSubmit(context);
                      },
                      child: Text('CONTINUE'),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.SIGNUP_PAGE);

                    },
                    child: Text(
                      'New to FirstCry? Register Here',
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
