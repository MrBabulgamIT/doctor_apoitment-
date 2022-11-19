import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Forget_Password extends StatefulWidget {
  const Forget_Password({Key? key}) : super(key: key);

  @override
  State<Forget_Password> createState() => _Forget_PasswordState();
}

class _Forget_PasswordState extends State<Forget_Password> {
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
                height: 141,
              ),
              Text(
                "Forget Password",
                style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: 32,
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
                height: 12,
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
