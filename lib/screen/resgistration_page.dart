import 'package:doctor_appoinment/screen/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool cheekboxValue = false;
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
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
                      Text(
                        "Back",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.purple),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 88,
              ),
              Text(
                "Create Account",
                style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: 29,
              ),
              TextFormField(
                style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                    hintText: "Md.Samiull ALim Jony",
                    hintStyle: GoogleFonts.nunito(
                        color: Colors.purple,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    fillColor: Colors.purple.withOpacity(0.2),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.person,
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
                      color: Colors.purple,
                      height: 17,
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
                height: 14,
              ),
              TextFormField(
                style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Re-Password",
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
                      color: Colors.purple,
                      height: 17,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        gapPadding: 12,
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: cheekboxValue,
                          onChanged: (bool? value) {
                            setState(() {
                              cheekboxValue = value!;
                            });
                          }),
                      Text(
                        "Remember me",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 44,
                width: width,
                child: Center(
                  child: Text(
                    "Sign Up",
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
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account??",
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
                      Get.to(LoginPage());
                    },
                    child: Text(
                      "Sign In!",
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
  }
}
