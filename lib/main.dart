import 'package:doctor_appoinment/screen/bottom_nav/botton_nav_main.dart';
import 'package:doctor_appoinment/screen/bottom_nav/doctorspage.dart';
import 'package:doctor_appoinment/screen/bottom_nav/service_page.dart';
import 'package:doctor_appoinment/screen/bottom_nav/top_doctor.dart';
import 'package:doctor_appoinment/screen/login_page.dart';
import 'package:doctor_appoinment/screen/on_boarding_page/on_boarding.dart';
import 'package:doctor_appoinment/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
