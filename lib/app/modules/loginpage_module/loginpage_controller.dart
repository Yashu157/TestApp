import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../sharedpref.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class loginpageController extends GetxController{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>(); // Add form key


  onFormSubmit(context)async{
    if (formKey.currentState!.validate()) {
      // Perform login logic here
      String email = emailController.text;
      String password = passwordController.text;

      final usersCollection = FirebaseFirestore.instance.collection('users');
      final querySnapshot = await usersCollection.where('email', isEqualTo: email).get();

      if (querySnapshot.docs.isNotEmpty) {
        // User exists
        final userDocument = querySnapshot.docs.first;
        final userData = userDocument.data();

        // Validate the password
        if (userData['password'] == password) {
          await PreferenceManager.setLoggedIn(true);

          Get.offNamed(Routes.HOME_PAGE);
          var snackBar = const SnackBar(content: Text('Login successful'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          print("user test password is correct");
          // Password is correct
          // Display a success message or navigate to the home page
          // ...
        } else {
          var snackBar = const SnackBar(content: Text('User password is incorrect '));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          print("user test password incoreect");

          // Password is incorrect
          // Display an error message
          // ...
        }
      } else {
        var snackBar = const SnackBar(content: Text('User not exist '));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        print("user test not exsist ");

        // User does not exist
        // Display an error message
        // ...
      }

      print(
          'Login button pressed with email: $email and password: $password');
    }
  }


  bool isValidEmail(String value) {
    // Regular expression pattern for email validation
    final pattern = r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
