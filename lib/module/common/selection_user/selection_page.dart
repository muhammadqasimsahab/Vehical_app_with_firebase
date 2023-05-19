import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/constant_text.dart';

import '../../../controller/login_screen_controller.dart';
import '../../../utils/all_images.dart';
import '../../../utils/buttons.dart';

class UserSelectionPage extends StatefulWidget {
  const UserSelectionPage({super.key});

  @override
  State<UserSelectionPage> createState() => _UserSelectionPageState();
}

class _UserSelectionPageState extends State<UserSelectionPage> {
  var controller = Get.put(LoginScreenController());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child:
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
            SizedBox(height: 15.h),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              maxRadius: 6.h,
              backgroundImage: AssetImage(ImagesUrl.app_logo),
            ),
            SizedBox(
              height: 2.h,
            ),
            ConstantText(
              textcolor: AppColors.app_textColor,
              title: "Taxi VAGT Reports",
              fontWeight: FontWeight.bold,
              size: 16.sp,
            ),
            SizedBox(height: 23.h),
         
            Button(
              buttontext: 'Adminstration',
              buttontextcolor: AppColors.app_textColor,
              buttoncolor: AppColors.primaryColor,
                size: 14.sp,
              onpress: () {
                // controller.FormValidation();
                Get.toNamed(Paths.LoginScreen2);
              },
            ), 
    SizedBox(height: 3.h),

            Button(
              buttontext: 'User',
              buttontextcolor: AppColors.app_textColor,
              buttoncolor: AppColors.primaryColor,
                size: 14.sp,
              onpress: () {
                Get.toNamed(Paths.UserLoginPage);
              },
            ),
            SizedBox(height: 3.h),
           ]),
        ),
      ),
    );
  }
}
