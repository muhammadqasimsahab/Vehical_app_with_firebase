
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:vehical_management/routes/app_routes.dart';
import 'package:sizer/sizer.dart';
import 'firebase_options.dart';
void  main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
     builder: (context, orientation, deviceType){
      return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MultiplicationTableCell (),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
    );
     }
    );
   
  }
}

