import 'package:doctor_appoinment/screen/bottom_nav/botton_nav_main.dart';
import 'package:doctor_appoinment/screen/forget_password.dart';
import 'package:doctor_appoinment/screen/resgistration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("images/arrow_icon.png"),
                        height: 15,
                        width: 8,
                        color: Colors.purple,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Back",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.purple),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image(
                  image: AssetImage("images/login.jpg"),
                  fit: BoxFit.cover,
                  width: width,
                  height: 240,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                "Welcome Back!",
                style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                "Sign in to continue",
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              TextFormField(
                style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                    hintText: "sajony.bd99@gmail.com",
                    hintStyle: GoogleFonts.nunito(
                        color: Colors.purple,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    fillColor: Colors.purple.withOpacity(0.2),
                    filled: true,
                    prefixIcon: Image(
                      image: AssetImage("images/email_icon.png"),
                      width: 14,
                      height: 17,
                      color: Colors.purple,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        gapPadding: 12,
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 14,
              ),
              TextFormField(
                style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: GoogleFonts.nunito(
                        color: Colors.purple,
                        fontSize: 16,
                        textStyle: TextStyle(),
                        fontWeight: FontWeight.w400),
                    fillColor: Colors.purple.withOpacity(0.2),
                    filled: true,
                    prefixIcon: Image(
                      image: AssetImage("images/lock_icon.png"),
                      width: 14,
                      height: 17,
                      color: Colors.purple,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        gapPadding: 12,
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("images/tick.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Forget_Password());
                    },
                    child: Text(
                      "Forget Password?",
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        color: Colors.purple,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(BottomNav_MainPage());
                },
                child: Container(
                  height: 44,
                  width: width,
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.nunito(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(RegistrationPage());
                    },
                    child: Text(
                      "Sign up!",
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.purple,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
