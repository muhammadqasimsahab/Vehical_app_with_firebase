import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/module/adminstration/home/home.dart';
import 'package:vehical_management/module/adminstration/recode_form_selection/controller/pick_imageController.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/utils/all_images.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/buttons.dart';
import 'package:vehical_management/utils/constant_text.dart';
import 'package:vehical_management/widgets/textfiled.dart';

class EnterRecordPage extends StatefulWidget {
  const EnterRecordPage({super.key});

  @override
  State<EnterRecordPage> createState() => _EnterRecordPageState();
}

class _EnterRecordPageState extends State<EnterRecordPage> {
  final imagepickercontroller = Get.put(PickImageController());

final forerController=TextEditingController();
final forerNumController=TextEditingController();
final VognController=TextEditingController();
final DatoController=TextEditingController();
final DatoTilController=TextEditingController();
final MeterController=TextEditingController();
final KontantController=TextEditingController();
final FejlTourController=TextEditingController();
final fejlTurController=TextEditingController();
final udgifterController=TextEditingController();
final broBizController=TextEditingController();
final timerController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_backgroundColor,
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: ConstantText(
          title: "Add Driver",
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {
                  imagepickercontroller.pickImage(ImageSource.camera);
                  Get.to(
                      HomePage(
                        image: imagepickercontroller.selectedImage.value,
                      ),
                      transition: Transition.fadeIn);
                },
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: AppColors.app_textColor,
                )),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Form(
              // key: controller.login,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        maxRadius: 6.h,
                        backgroundImage: AssetImage(ImagesUrl.app_logo),
                      ),
                      SizedBox(
                        height: 1.3.h,
                      ),
                      ConstantText(
                        textcolor: AppColors.app_textColor,
                        title: "Taxi VAGT Reports",
                        fontWeight: FontWeight.bold,
                        size: 16.sp,
                      ),
                      SizedBox(height: 4.h),
                      UserNameTextFiled(
                        controller: forerController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'Forer',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: forerNumController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'Forer#',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: VognController,
                        validate: (val) {},
                        hint: 'Vogn#',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: DatoController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'Dato fra',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: DatoTilController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'Dato til',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: MeterController,
                        validate: (val) {},
                        hint: 'Meter',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: KontantController,
                        validate: (val) {},
                        hint: 'Kontant',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: fejlTurController,
                        validate: (val) {},
                        hint: 'Fejl tour#',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: FejlTourController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'Fejl tur belob',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: udgifterController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'Udgifter',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: broBizController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'BroBiz (Kontant)',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      UserNameTextFiled(
                        controller: timerController,
                        validate: (val) {
                          // return controller.usernamevalidation(val);
                        },
                        hint: 'Timer i vearkstedet',
                        visiable: false,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 4.h),
            child: Button(
              buttontext: 'Submit',
              buttontextcolor: AppColors.app_textColor,
              size: 14.sp,
              buttoncolor: AppColors.primaryColor,
              onpress: () {
                Get.to(HomePage(
                  brobiz: broBizController.text,
                  dato: DatoController.text,
                  datotil: DatoTilController.text,
                  fejltour: FejlTourController.text,
                  fejltur: fejlTurController.text,
                  forer: forerController.text,
                  forernum: forerNumController.text,
                  kontant: KontantController.text,
                  meter: MeterController.text,
                  timer: timerController.text,
                  vogn: VognController.text,
                  udgifter: udgifterController.text,
                ));
                Get.toNamed(Paths.HomePage);
              },
            ),
          ),
        ],
      ),
    );
  }
}
