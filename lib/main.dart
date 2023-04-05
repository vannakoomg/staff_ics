import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:staff_ics/core/login/screen/login_screen.dart';
import 'package:staff_ics/modules/canteen/screen/canteen_screen.dart';
import 'package:staff_ics/modules/home_screen/screen/home_screen.dart';
import 'package:staff_ics/core/slash_screen/screens/slash_screen.dart';


void main() async{
 await GetStorage.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
      title: 'Staff_ics',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SlashScreen(),
          routes: {
            'login':(context) => const LoginScreen(),
              'home': (context) => const HomeScreen(),

              'canteen': (context) => const CanteenScreen(),
              }
    ),);
  }
}
