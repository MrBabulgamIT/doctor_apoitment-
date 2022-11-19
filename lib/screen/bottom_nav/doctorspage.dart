import 'package:doctor_appoinment/controller/modelcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
    final doctordata = ModelController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          color: Colors.white.withOpacity(0.9),
          child: Column(
            children: [
              SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: Row(
                  children: [
                    GestureDetector(
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
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Category (Specialties)",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  children: [
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(doctordata
                                  .modelControolerData[0].image
                                  .toString()),
                              fit: BoxFit.cover,
                              width: 173,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              doctordata.modelControolerData[0].titleName
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              doctordata.modelControolerData[0].subTitle
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 1,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(doctordata
                                  .modelControolerData[1].image
                                  .toString()),
                              fit: BoxFit.cover,
                              width: 173,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              doctordata.modelControolerData[1].titleName
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              doctordata.modelControolerData[1].subTitle
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 1,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(doctordata
                                  .modelControolerData[2].image
                                  .toString()),
                              fit: BoxFit.cover,
                              width: 173,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              doctordata.modelControolerData[2].titleName
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              doctordata.modelControolerData[2].subTitle
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 1,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(doctordata
                                  .modelControolerData[3].image
                                  .toString()),
                              fit: BoxFit.cover,
                              width: 173,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              doctordata.modelControolerData[3].titleName
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              doctordata.modelControolerData[3].subTitle
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 1,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(doctordata
                                  .modelControolerData[4].image
                                  .toString()),
                              fit: BoxFit.cover,
                              width: 173,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              doctordata.modelControolerData[4].titleName
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              doctordata.modelControolerData[4].subTitle
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 1,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(doctordata
                                  .modelControolerData[5].image
                                  .toString()),
                              fit: BoxFit.cover,
                              width: 173,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              doctordata.modelControolerData[5].titleName
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              doctordata.modelControolerData[5].subTitle
                                  .toString(),
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
