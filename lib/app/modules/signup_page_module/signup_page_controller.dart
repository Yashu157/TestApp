import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class signup_pageController extends GetxController{
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  submitForm(context)async{
    if (formKey.currentState!.validate()) {
      String fullName = fullNameController.text;
      String email = emailController.text;
      String password = passwordController.text;
      final usersCollection = FirebaseFirestore.instance.collection('users');
      final newUserDocument = usersCollection.doc(); // Generate a new document ID
      final userData = {
        'fullName': fullName,
        'email': email,
        'password': password,
        // Additional user data can be added here
      };
      await newUserDocument.set(userData).then((value) {
        Get.offNamed(Routes.LOGINPAGE);
        var snackBar = const SnackBar(content: Text('Register successful now please login'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });

      print('Registration button pressed with full name: $fullName, email: $email, and password: $password');
    }
  }


  bool isValidEmail(String value) {
    final pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,}$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  bool isValidPassword(String value) {
    final pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

}
