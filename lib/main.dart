
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';
/// GetX Template Generator - fb.com/htngu.99
/// */

 main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
runApp(const MyApp());
}
class MyApp extends GetView {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return Sizer(
        builder:(context, orientation, deviceType){
          return  GetMaterialApp(
            title: "testapp",
            theme: appThemeData,
            initialBinding: BindingsBuilder(() {
            }),
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            getPages: AppPages.pages,
            builder: (context, widget) {
              //restricting app font size to change from system settings
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: widget!);
            },
            // home: Routes.LOGIN_SCREEN,
            initialRoute: Routes.SPLASH_SCREEN,
          );
        }
    );
  }
}


