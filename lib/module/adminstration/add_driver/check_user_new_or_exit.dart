
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/utils/all_images.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/constant_text.dart';

import '../../../controller/login_screen_controller.dart';
import '../../../utils/buttons.dart';
import '../../../widgets/textfiled.dart';

class CheckUserExitOrNot extends StatefulWidget {
  CheckUserExitOrNot({Key? key}) : super(key: key);

  @override
  State<CheckUserExitOrNot> createState() => _CheckUserExitOrNotState();
}

class _CheckUserExitOrNotState extends State<CheckUserExitOrNot> {
  var controller = Get.put(LoginScreenController());
  bool hiddenpassword = true;

  List<FocusNode> _focusNodes = [
    FocusNode(),
  ];

  @override
  void initState() {
    _focusNodes.forEach((node) {
      node.addListener(() {
        setState(() {});
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_backgroundColor,
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: ConstantText(
          title: "Add User",
          size: 13.sp,
          textcolor: AppColors.app_textColor,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
            SizedBox(height: 10.h),
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
            SizedBox(height: 20.h),
         
            Button(
              buttontext: 'New User',
              buttontextcolor: AppColors.app_textColor,
              buttoncolor: AppColors.primaryColor,
                size: 14.sp,
              onpress: () {
                // controller.FormValidation();
                Get.toNamed(Paths.AddNewDriverPage);
              },
            ), 
    SizedBox(height: 3.h),

            Button(
              buttontext: 'Exit User',
              buttontextcolor: AppColors.app_textColor,
              buttoncolor: AppColors.primaryColor,
                size: 14.sp,
              onpress: () {
                Get.toNamed(Paths.ExitVognPage);
              },
            ),
            SizedBox(height: 3.h),
           ]),
        ),
      ),
    
    );
  }

  void _togglePasswordView() {
    // if (hiddenpassword == true) {
    //   hiddenpassword = false;
    // } else {
    //   hiddenpassword = true;
    // }
    hiddenpassword = !hiddenpassword;
    setState(() {});
  }
}
