import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/controller/login_screen_controller.dart';
import 'package:vehical_management/module/adminstration/auth/signupScreen/controller/sign_up_controller.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/utils/all_images.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/buttons.dart';
import 'package:vehical_management/utils/constant_text.dart';
import 'package:vehical_management/widgets/resuableTextFiled.dart';
import 'package:vehical_management/widgets/textfiled.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // var controller = Get.put(LoginScreenController());
  var signUpController = Get.put(SignUpController());
  List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
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
    // final emailController = TextEditingController();
    // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_backgroundColor,
      body: Form(
           key: signUpController.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 6.h),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    maxRadius: 6.h,
                    backgroundImage: AssetImage(ImagesUrl.app_logo),
                  ),
                  SizedBox(
                    height: 2.h
                  ),
                  ConstantText(
                    textcolor: AppColors.app_textColor,
                    title: "Taxi VAGT Reports",
                    fontWeight: FontWeight.bold,
                    size: 16.sp,
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    children: [
                      ConstantText(
                        title: "SignUp",
                        size: 17.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  UserNameTextFiled(
                      focusnode: _focusNodes[0],
                      controller:
                          signUpController.companyNameController.value,
                      validate: (val) {
                        return signUpController.companyNameValidate(val);
                      },
                      hint: 'Company Name',
                      icon: Icon(
                        Icons.home,
                        color: _focusNodes[0].hasFocus
                            ? AppColors.primaryColor
                            : Colors.grey.shade300,
                      ),
                      visiable: false),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  UserNameTextFiled(
                      focusnode: _focusNodes[1],
                      controller: signUpController.phoneController.value,
                      validate: (val) {
                        return signUpController.phoneValidate(val);
                      },
                      hint: 'Phone',
                      icon: Icon(
                        Icons.phone,
                        color: _focusNodes[1].hasFocus
                            ? AppColors.primaryColor
                            : Colors.grey.shade300,
                      ),
                      visiable: false),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  UserNameTextFiled(
                      focusnode: _focusNodes[2],
                      controller: signUpController.cvrNumberController.value,
                      validate: (val) {
                        return signUpController.cvrNumberValidate(val);
                      },
                      hint: 'Email',
                      icon: Icon(
                        Icons.numbers,
                        color: _focusNodes[2].hasFocus
                            ? AppColors.primaryColor
                            : Colors.grey.shade300,
                      ),
                      visiable: false),
        //           UserNameTextFiled(
        //               focusnode: _focusNodes[2],
        //               controller: signUpController.emailController.value,
        //               validate: (val) {
        //                 signUpController.emailValidate(val);
        // //                    if (val == null || val.isEmpty) {
        // // return 'Can\'t be empty';
        // //   }
        // //   return null;
        //               },
        //               hint: 'Email',
        //               icon: Icon(
        //                 Icons.email_outlined,
        //                 color: _focusNodes[2].hasFocus
        //                     ? AppColors.primaryColor
        //                     : Colors.grey.shade300,
        //               ),
        //               visiable: false),
                       SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  UserNameTextFiled(
                      focusnode: _focusNodes[3],
                      controller: signUpController.cvrNumberController.value,
                      validate: (val) {
                        return signUpController.cvrNumberValidate(val);
                      },
                      hint: 'Password',
                      icon: Icon(
                        Icons.numbers,
                        color: _focusNodes[3].hasFocus
                            ? AppColors.primaryColor
                            : Colors.grey.shade300,
                      ),
                      visiable: false),
        //           UserNameTextFiled(
        //               focusnode: _focusNodes[3],
        //               controller: signUpController.passwordController.value,
        //               validate: (val) {
        //                 signUpController.passwordValidate(val);
        // //                   if (val == null || val.isEmpty) {
        // // return 'Can\'t be empty';
        // //   }
        // //   return null;
        //               },
        //               hint: 'password',
        //               icon: InkWell(
        //                 onTap: _togglePasswordView,
        //                 child: Icon(
        //                   hiddenpassword?Icons.lock_outline_rounded:Icons.no_encryption_gmailerrorred_rounded,
        //                   color: _focusNodes[3].hasFocus
        //                       ? AppColors.primaryColor
        //                       : Colors.grey.shade300,
        //                 ),
        //               ),
        //               visiable: hiddenpassword, ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  UserNameTextFiled(
                      focusnode: _focusNodes[4],
                      controller: signUpController.cvrNumberController.value,
                      validate: (val) {
                        return signUpController.cvrNumberValidate(val);
                      },
                      hint: 'CVR Number',
                      icon: Icon(
                        Icons.numbers,
                        color: _focusNodes[4].hasFocus
                            ? AppColors.primaryColor
                            : Colors.grey.shade300,
                      ),
                      visiable: false),
                  SizedBox(height: 4.h),
                   Button(
                        buttontext: 'SignUp',
                        buttontextcolor: AppColors.app_textColor,
                        buttoncolor: AppColors.primaryColor,
                        size: 14.sp,
                        onpress: () {
                         if(signUpController.formKey.currentState!.validate());
                         // {
                         //  //  signUpController.signUpMethod();
                         //  print("name company name : ${signUpController.companyNameController}");
                         //  print("name phone name : ${signUpController.phoneController}");
                         //  print("name password name : ${signUpController.passwordController}");
                         //  print("name email name : ${signUpController.emailController}");
                         //  print("name cvr name : ${signUpController.cvrNumberController}");
                         // }else{
                         //  return ;
                         // }
                        },
                      ),
                  SizedBox(height: 3.h),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstantText(
                          title: "Already have an account!",
                          size: 13.sp,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Paths.LoginScreen2);
                            // signUpController.formKey.currentState!.save();
                          },
                          child: Text(' SignIn',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.app_textColor)),
                        )
                      ]),
                ]),
          ),
        ),
      ),
    );
  }
    bool hiddenpassword = true;
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
