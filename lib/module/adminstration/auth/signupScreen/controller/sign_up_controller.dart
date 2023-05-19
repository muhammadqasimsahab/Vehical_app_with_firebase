import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/utils/app_color.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final companyNameController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  final cvrNumberController = TextEditingController().obs;

  RxBool isLoading = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;

  var formKey = GlobalKey<FormState>();

  FormValidation() {
    if (!formKey.currentState!.validate()) {
      print('Form is Not valid');
    } else {
      print("form are valid");
      // Get.to(() => PakProgrammerBottomNav());
    }
  }
  clearField() {
    companyNameController.value.clear();
    emailController.value.clear();
    phoneController.value.clear();
    companyNameController.value.clear();
  }

  signUpMethod() async {
    try {
      clearField();
      isLoading(true);
      auth.createUserWithEmailAndPassword(
          email: emailController.value.text.trim().toString(),
          password: passwordController.value.text.trim().toString()).then((value){
            isLoading(false);
              Get.snackbar("Login", "Registered Successfully. Please Login..",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: AppColors.primaryColor.withOpacity(0.5));
              Get.toNamed(Paths.LoginScreen2);
          }).onError((error, stackTrace) {
            isLoading(false);
              Get.snackbar("Password Provided is too Weak", error.toString(), snackPosition: SnackPosition.BOTTOM,
            backgroundColor: AppColors.primaryColor.withOpacity(0.5));
          });
      // isLoading(false);



    } on FirebaseAuthException catch (e) {
      // if (e.code == "weak-password") {
      //   isLoading(false);
      //   Get.snackbar("Password Provided is too Weak", "",
      //       snackPosition: SnackPosition.BOTTOM,
      //       backgroundColor: AppColors.primaryColor.withOpacity(0.5));
      // }
      //  else
        if (e.code == 'email-already-in-use') {
        isLoading(false);
        Get.snackbar("Account Already exists", "",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: AppColors.primaryColor.withOpacity(0.5));
      }
    }
  }

  String? companyNameValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }

  String? phoneValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }


  String? emailValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    } else if (!text.contains('@gmail.com')) {
      return 'Please Enter Valid Email';
    }
    return null;
  }


  String? passwordValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }

  String? cvrNumberValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
}
