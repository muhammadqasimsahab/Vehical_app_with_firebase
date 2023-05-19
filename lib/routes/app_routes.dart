

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vehical_management/module/adminstration/add_driver/check_user_new_or_exit.dart';
import 'package:vehical_management/module/adminstration/add_driver/widgets/exit_user/exit_user.dart';
import 'package:vehical_management/module/adminstration/add_vogn/view.dart';
import 'package:vehical_management/module/adminstration/auth/loginscreen/login_screen2.dart';
import 'package:vehical_management/module/adminstration/auth/signupScreen/signup_screen.dart';
import 'package:vehical_management/module/adminstration/home/home.dart';
import 'package:vehical_management/module/adminstration/onbordingScreen/onbording_main_screen.dart';
import 'package:vehical_management/module/adminstration/package_selection/package_selection.dart';
import 'package:vehical_management/module/adminstration/recode_form_selection/enter_record_page.dart';
import 'package:vehical_management/module/common/selection_user/selection_page.dart';
import 'package:vehical_management/module/common/splashScreen/splash_screen.dart';
import 'package:vehical_management/module/user/login/user_login.dart';
import 'package:vehical_management/routes/app_pages.dart';

import '../module/adminstration/add_driver/widgets/new_user/new_user.dart';
class AppPages {

  static const INITIAL = Routes.HOME;

  static final routes = [
     GetPage(
      name: Paths.splash_screen,
      page: () => SplashScreen(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ),
  GetPage(
      name: Paths.OnbordingMainScreen,
      page: () => OnbordingMainScreen(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ), GetPage(
      name: Paths.LoginScreen2,
      page: () => LoginScreen2(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ), GetPage(
      name: Paths.SignupScreen,
      page: () => SignupScreen(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ), GetPage(
      name: Paths.SelectPackage,
      page: () => SelectPackage(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ),
     GetPage(
      name: Paths.AddVognPage,
      page: () => AddVognPage(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ), 
     GetPage(
      name: Paths.AddNewDriverPage,
      page: () => AddNewDriverPage(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ),  GetPage(
      name: Paths.HomePage,
      page: () => HomePage(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ), GetPage(
      name: Paths.EnterRecordPage,
      page: () => EnterRecordPage(),
      transition: Transition.downToUp
      // binding: FindTutorsBinding(),
    ),
     GetPage(
      name: Paths.UserSelectionPage,
      page: () => UserSelectionPage(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ), GetPage(
      name: Paths.CheckUserExitOrNot,
      page: () => CheckUserExitOrNot(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ),
     GetPage(
      name: Paths.ExitVognPage,
      page: () => ExitVognPage(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ), GetPage(
      name: Paths.UserLoginPage,
      page: () => UserLoginPage(),
      transition: Transition.fadeIn
      // binding: FindTutorsBinding(),
    ),
  ];
}