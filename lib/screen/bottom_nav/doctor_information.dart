import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorInformation extends StatefulWidget {
  const DoctorInformation({Key? key}) : super(key: key);

  @override
  State<DoctorInformation> createState() => _DoctorInformationState();
}

class _DoctorInformationState extends State<DoctorInformation> {
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
    return Scaffold(
      body: Container(
        color: Colors.purple.withOpacity(0.1),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height / 2,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 50, horizontal: 6),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage("images/arrow_icon.png"),
                                    height: 18,
                                    width: 8,
                                    color: Colors.white,
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
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 20,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            image: AssetImage("images/pdoc.png"),
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dr. Ishtiuq Ahmed Chowdhury",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "General Practitioner",
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Somerian Clinic - Dubai",
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "★ 4.9 (4255 Reviews)",
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          width: Get.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 0,
                                    color: Colors.white.withOpacity(0.9),
                                    offset: Offset(-0, -0))
                              ]),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Book Appointment",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "General Practitioner",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Somerian Health Clinic",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Image(
                              image: AssetImage("images/start.png"),
                              height: 16,
                              width: 17,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image(
                              image: AssetImage("images/start.png"),
                              height: 16,
                              width: 17,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image(
                              image: AssetImage("images/start.png"),
                              height: 16,
                              width: 17,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image(
                              image: AssetImage("images/start.png"),
                              height: 16,
                              width: 17,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image(
                              image: AssetImage("images/start.png"),
                              height: 16,
                              width: 17,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 14),
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(0, 0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Biography",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing",
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
